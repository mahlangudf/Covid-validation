import mysql.connector
import pandas as pd
from sqlalchemy import create_engine
import sqlalchemy as sa
import os
import warnings
import numpy as np
import datetime

warnings.simplefilter("ignore")
sql_server = 'DMAHLANGU\SQLEXPRESS'
engine = sa.create_engine('mssql+pyodbc://'+ sql_server +'/Covid_Validation?driver=SQL Server')
conn = engine.connect()
encoding = "utf8"

login = 'adamza28388225'
user = 'root'

covod_vax = ['vaccinated_covid','vaccine_dose1' ,'dose1_specify' ,'dose1_when','where_dose1'
,'dose2','dose2_specify','where_dose2' ,'dose2_when']

def lowe_case(row):
    r = row['v'].lower()
    return r

def getTeleVAData():
    date = datetime.datetime.today()
    day = date.day
    month = date.month
    year = date.year
    variables = pd.read_excel(r'C:\Work\VA\CATI VA\Data Scripts\variables.xlsx')
    va_variables = list(map(lambda x: x.lower(), variables['variable_names'].tolist())) + covod_vax 
    db_connection_str = 'mysql+pymysql://{username}:{password}@localhost/verbalautopsy'.format(username=user, password=login)
    db_connection = create_engine(db_connection_str)
    sql_query = 'SELECT primkey,  variablename as v, REPLACE(CAST(aes_decrypt(answer, "4pg1galdw&j&344*376g5y1n3mush2d!") AS NCHAR), \"\'\", \"\'\") AS answer, ts FROM _data'
    #"SELECT primkey, variablename, CAST(aes_decrypt(answer, '4pg1galdw&j&344*376g5y1n3mush2d!') AS CHAR) AS answer, ts  FROM _data"
    data = pd.read_sql(sql_query, con=db_connection)
    
    data['variablename'] = data.apply(lowe_case, axis=1)

    pivoted_data = data.pivot(index='primkey', columns='variablename', values='answer')
    pivoted_data.reset_index(drop=False, inplace=True)
    nubis_cols = set(pivoted_data.columns.tolist())
    null_col = pd.Series([None for k in range(pivoted_data.shape[0])])
    for i, v in enumerate(va_variables):
        if v not in nubis_cols and v !='adssid':
            pivoted_data[v] = null_col
    pivoted_data = pivoted_data.rename(columns={'endtime':'endtime_1', 'primkey':'adssid'})
    pivoted_data2 = pivoted_data.replace('RF', '999')
    table_name = 'teleVA_raw2_{year}_{month}_{day}'.format(year=year, month=month, day=day)
    #pivoted_data2.to_csv('out.csv')
    
    cols = {}
    for c in pivoted_data2.columns:
        if '[' in c:
            cols[c] = c.replace('[', '_')[:-1] 
    pivoted_data2 = pivoted_data2.rename(columns=cols)
    #pivoted_data2 = pivoted_data2.drop(columns=['FW_Name_Id10010'])
    pivoted_data2.to_sql(table_name, con=conn, index=False, if_exists='replace')


def mitelReports():
    dir1 = r'C:\Work\VA\CATI VA\VA Cati 2022\Call reports'
    #dir1 = r'C:\Work\VA\CATI VA\Data Scripts\Call reports\VA 2020'
    all_files = os.listdir(dir1)
    all_report = []
    for f in all_files:
        report = pd.read_excel(dir1 + '\\'+f, engine="openpyxl", skiprows=4, header=0)
        all_report.append(report)
    final_report = pd.concat(all_report)
    final_report.to_sql('call_records', con=conn, if_exists='replace')
    
        
#mitelReports()    
getTeleVAData()
