/* -------------------- SQL 고득점 Kit -------------------- */

# 1. 최댓값 구하기
SELECT DATETIME `시간`
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1;


# 2. 최솟값 구하기
SELECT DATETIME `시간`
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;


# 3. 동물 수 구하기
SELECT COUNT(ANIMAL_ID) `count` FROM ANIMAL_INS;


# 4. 어린 동물 찾기
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION NOT IN (
    SELECT INTAKE_CONDITION
    FROM ANIMAL_INS
    WHERE INTAKE_CONDITION = 'Aged'
);


# 5. 중복 제거하기
SELECT COUNT(DISTINCT NAME) `count`
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;