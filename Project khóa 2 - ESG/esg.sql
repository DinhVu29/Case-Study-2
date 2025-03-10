SELECT * FROM esg 

SELECT * FROM income 

SELECT * FROM region 

ALTER TABLE esg.income DROP COLUMN Column3

ALTER TABLE esg.region DROP COLUMN Column3

WITH A AS (SELECT e.`Country Name`, i.`Income Level`, r.Region, e.`Year`, 
e.`CO2 emissions (metric tons per capita)`,e.`Agriculture, forestry, and fishing, value added (% of GDP)` ,
e.`Energy intensity level of primary energy`,
e.`Land Surface Temperature`, e.`Nitrous oxide emissions`,e.`Methane emissions`,
e.`Population ages 65 and above (% of total population)`, e.`Unemployment, total (% of total labor force)`,
e.`Mortality rate, under-5 (per 1,000 live births)`, e.`Life expectancy at birth, total (years)`,
e.`Fertility rate, total (births per woman)`, e.`Government expenditure on education, total`,
e.`Control of Corruption: Estimate`, e.`Government Effectiveness: Estimate`, e.`GDP growth (annual %)`,
e.`Regulatory Quality: Estimate`, e.`Rule of Law: Estimate`, e.`Voice and Accountability: Estimate`,
e.`Political Stability and Absence of Violence/Terrorism`,
e.`School enrollment, primary and secondary, gender parity index`,
(-e.`CO2 emissions (metric tons per capita)`+ e.`Agriculture, forestry, and fishing, value added (% of GDP)` +
e.`Energy intensity level of primary energy`-e.`Land Surface Temperature`-
e.`Nitrous oxide emissions`-e.`Methane emissions`+e.`Population ages 65 and above (% of total population)`
- e.`Unemployment, total (% of total labor force)`- e.`Mortality rate, under-5 (per 1,000 live births)`
+e.`Life expectancy at birth, total (years)`-e.`Fertility rate, total (births per woman)` 
+e.`Government expenditure on education, total` +e.`Control of Corruption: Estimate` 
+e.`Government Effectiveness: Estimate` +e.`GDP growth (annual %)` +e.`Regulatory Quality: Estimate` 
+e.`Rule of Law: Estimate` +e.`Voice and Accountability: Estimate` +
e.`Political Stability and Absence of Violence/Terrorism` +
e.`School enrollment, primary and secondary, gender parity index`) AS ESG_Score
FROM esg_cleaned AS e
LEFT JOIN income AS i
USING(`Country Name`)
LEFT JOIN region AS r
USING(`Country Name`))
SELECT A.*,
ROW_NUMBER () OVER (
PARTITION BY A.Year ORDER BY ESG_Score DESC) AS ESG_Rank
FROM A


