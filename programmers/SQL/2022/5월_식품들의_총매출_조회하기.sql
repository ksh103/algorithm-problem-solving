SELECT P.PRODUCT_ID, P.PRODUCT_NAME, (SUM(O.AMOUNT) * P.PRICE) AS 'TOTAL_SALES'
FROM FOOD_PRODUCT P
JOIN (SELECT PRODUCT_ID, AMOUNT
      FROM FOOD_ORDER
      WHERE DATE_FORMAT(PRODUCE_DATE, '%Y-%m') = '2022-05'
     ) O
ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY 1
ORDER BY 3 DESC, 1