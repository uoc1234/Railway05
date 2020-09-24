-- EX_1
        -- QUESTION_1
-- Cách 1
SELECT *
FROM adventureworks.product P
JOIN productsubcategory PSC ON P.productsubcategoryID = PSC.productsubcategoryID
WHERE PSC.`Name` = 'Saddles';
-- Cách 2
SELECT P.`Name`
FROM	product P
WHERE P.productsubcategoryID IN (SELECT PSC.productsubcategoryID
									FROM productsubcategory PSC
									WHERE PSC.`Name`='Saddles');
                                    
			-- QUESTION_2
SELECT P.`Name`
FROM	product P
JOIN productsubcategory PSC ON P.productsubcategoryID = PSC.productsubcategoryID
WHERE P.`Name` LIKE '%Bo%';
			-- QUESTION_3
SELECT MIN(ListPrice)
FROM	product P
WHERE	productsubcategoryID = 3;