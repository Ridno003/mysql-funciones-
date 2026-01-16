-- 1a --
SELECT CONCAT('El apellido es: ', apellido)
FROM empleados;

-- 1b  --
SELECT CONCAT(apellido, ' es ', oficio)
FROM empleados;

SELECT REPLACE('X', 'X', CONCAT(apellido, ' es ', oficio))
FROM empleados;

-- 2 --
SELECT LENGTH ('Buenos dias princesa');

-- 3 --
SELECT apellido, LENGTH(apellido)
FROM empleados
WHERE dep_no = 10
AND salario < 23000;


-- 4 --
Select lower(apellidos)
from empleados;

-- 5a --
SELECT INSERT(apellido, 1, 0, '****')
FROM empleados;


-- 5b -- 
SELECT LPAD('xyz', 10, '.');

-- 6 --
SELECT LPAD(apellido, 15)
FROM empleados
WHERE dep_no = 10;

-- 7 --
SELECT REPLACE('Blanco y Negro', 'o', 'a');

-- 8 --
SELECT REPLACE('Blanca y Negra', 'a', '');

-- 9 --
SELECT RPAD(oficio, 20) AS oficio_formateado, dep_no
FROM empleados;

-- 10 --
SELECT SUBSTR('Buenos días princesa', 3, 2);

-- 11 --
SELECT SUBSTR('Buenos días princesa', 10);

-- 12 --
SELECT apellido, SUBSTR(oficio, 1, 1) AS inicial_oficio
FROM empleados;

-- 13 --
SELECT apellido, LOWER(SUBSTR(apellido, 1, 2))
FROM empleados;

-- 14 --
SELECT CONCAT(LTRIM('   hola'), ' y ', LTRIM('   adiós'));
SELECT CONCAT(RTRIM('hola   '), ' y ', RTRIM('adiós   '));

-- 15a --
SELECT CURDATE();

-- 15b --
SELECT DAY(LAST_DAY(CURDATE()));

-- 15c --
SELECT TIMESTAMPDIFF(MONTH, '2005-01-01', CURDATE());

-- 16 a--
SELECT DATE_FORMAT ('010101', '%y%m%d');

-- 16b --
SELECT DATE_FORMAT('01112131', '%y%m%d');


-- 16c--
SELECT apellido,
       DATE_FORMAT(fecha_alta, '%d %M %Y') AS fecha_formateada
FROM empleados;


-- 16d--
SELECT DATE_FORMAT(CURDATE(), '%W, %d de %M de %Y');
