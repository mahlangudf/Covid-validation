USE verbalautopsy;



SELECT t.primkey,
	   called_number,
       firstname,
       lastname,
       FW_names,
       attempt_interview_dates,
       village,
       completed,
       reason
FROM 
	(
	SELECT primkey
		   , CASE WHEN variablename LIKE 'FW_names[%' THEN REPLACE(REPLACE(SUBSTRING(variablename, 9, 13), "]", ""), "[", "")
				  WHEN variablename LIKE 'called_number[%' THEN REPLACE(REPLACE(SUBSTRING(variablename, 14, 16), "]", ""), "[", "")
				  WHEN variablename LIKE 'attempt_interview_dates[%' THEN REPLACE(REPLACE(SUBSTRING(variablename, 24, 27), "]", ""), "[", "")
				  END AS attempts  
		   , MAX(CASE WHEN variablename LIKE 'called_number[%' THEN 
				CAST(aes_decrypt(answer, '4pg1galdw&j&344*376g5y1n3mush2d!') AS CHAR) END) AS called_number
		   , MAX(CASE WHEN variablename LIKE 'FW_names[%' THEN 
				CAST(aes_decrypt(answer, '4pg1galdw&j&344*376g5y1n3mush2d!') AS CHAR) END) AS FW_names
		   , MAX(CASE WHEN variablename LIKE 'attempt_interview_dates[%' THEN 
				CAST(aes_decrypt(answer, '4pg1galdw&j&344*376g5y1n3mush2d!') AS CHAR) END) AS attempt_interview_dates           
	FROM _data
	GROUP BY  primkey, (CASE WHEN variablename LIKE 'FW_names[%' THEN REPLACE(REPLACE(SUBSTRING(variablename, 9, 13), "]", ""), "[", "")
				  WHEN variablename LIKE 'called_number[%' THEN REPLACE(REPLACE(SUBSTRING(variablename, 14, 16), "]", ""), "[", "")
                  WHEN variablename LIKE 'attempt_interview_dates[%' THEN REPLACE(REPLACE(SUBSTRING(variablename, 24, 27), "]", ""), "[", "")
				  END)
		) t
JOIN  (SELECT DISTINCT primkey, 
			  CAST(aes_decrypt(answer, '4pg1galdw&j&344*376g5y1n3mush2d!') AS CHAR)  AS village
	   FROM _data
	   WHERE variablename = 'villageid' 
       ) t2 ON t2.primkey = t.primkey
JOIN (SELECT DISTINCT primkey, completed
	  FROM _data) c ON c.primkey = t.primkey

LEFT JOIN  (SELECT DISTINCT primkey, 
			  CAST(aes_decrypt(answer, '4pg1galdw&j&344*376g5y1n3mush2d!') AS CHAR)  AS reason
	   FROM _data
	   WHERE variablename = 'Reason' 
       ) t3 ON t3.primkey = t.primkey
LEFT JOIN (SELECT *
			FROM _cati_sample) cs ON cs.primkey = t.primkey
WHERE attempts >=1       