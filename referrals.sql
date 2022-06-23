USE verbalautopsy;

SELECT d.primkey
	   , cnt
	   , cast(aes_decrypt(answer, "dMd0b2Wx45wF3") as char) AS another_respondent
       , another_respondent_number
	   , d.completed
FROM _data d
JOIN (
	SELECT primkey
		   , REPLACE(REPLACE(SUBSTRING(variablename, 26, 29), "]", ""), "[", "") cnt
		   , cast(aes_decrypt(answer, "dMd0b2Wx45wF3") as char) AS another_respondent_number
		   , completed
	FROM _data
	WHERE variablename LIKE "another_respondent_number[%"
    ) d2 ON d.primkey = d2.primkey AND cnt = REPLACE(REPLACE(SUBSTRING(variablename, 24, 27), "]", ""), "[", "")
WHERE variablename LIKE "another_respondent_name[%"
ORDER BY d.primkey,cnt