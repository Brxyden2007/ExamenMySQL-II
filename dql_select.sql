1. Encuentra el cliente que ha realizado la mayor cantidad de alquileres en los últimos 6 meses.

SELECT a.id_cliente, c.nombre, c.apellidos, COUNT(*) AS alquileres_totales
FROM alquiler a
JOIN cliente c ON a.id_cliente = c.id_cliente
WHERE a.fecha_alquiler >= CURRENT_DATE - INTERVAL 6 month
GROUP BY c.id_cliente
ORDER BY alquileres_totales
LIMIT 1;

2. Lista las cinco películas más alquiladas durante el último año.

SELECT p.titulo, COUNT(*) AS alquileres_totales
FROM alquiler a
JOIN inventario i ON a.id_inventario = i.id_inventario
JOIN pelicula p ON p.id_pelicula = i.id_pelicula
WHERE a.fecha_alquiler >= CURRENT_DATE - INTERVAL 1 year
GROUP BY p.id_pelicula, p.titulo
ORDER BY alquileres_totales
LIMIT 5;

3. Obtén el total de ingresos y la cantidad de alquileres realizados por cada categoría de película.

SELECT c.nombre AS categoria, COUNT(*) AS cuenta_alquileres, SUM(pa.total) AS total_ingresos
FROM pago pa
JOIN alquiler a ON pa.id_alquiler = a.id_alquiler
JOIN inventario i ON a.id_inventario = i.id_inventario
JOIN pelicula p ON i.id_pelicula = p.id_pelicula
JOIN pelicula_categoria pc ON p.id_pelicula = pc.id_pelicula
JOIN categoria c ON pc.id_categoria = c.id_categoria
GROUP BY c.nombre
ORDER BY total_ingresos DESC;

4. Calcula el número total de clientes que han realizado alquileres por cada idioma disponible en un mes específico.

SELECT im.nombre AS idioma, COUNT(DISTINCT a.id_cliente) AS clientes_totales
FROM alquiler a
JOIN inventario i ON a.id_inventario = i.id_inventario
JOIN pelicula p ON i.id_pelicula = p.id_pelicula
JOIN idioma im ON p.id_idioma = im.id_idioma
GROUP BY im.nombre;

5. Encuentra a los clientes que han alquilado todas las películas de una misma categoría.

6. Lista las tres ciudades con más clientes activos en el último trimestre.

7. Muestra las cinco categorías con menos alquileres registrados en el último año.

8. Calcula el promedio de días que un cliente tarda en devolver las películas alquiladas.

9. Encuentra los cinco empleados que gestionaron más alquileres en la categoría de Acción.

10. Genera un informe de los clientes con alquileres más recurrentes.

11. Calcula el costo promedio de alquiler por idioma de las películas.

12. Lista las cinco películas con mayor duración alquiladas en el último año.

13. Muestra los clientes que más alquilaron películas de Comedia

14. Encuentra la cantidad total de días alquilados por cada cliente en el último mes.

15. Muestra el número de alquileres diarios en cada almacén durante el último trimestre.

16. Calcula los ingresos totales generados por cada almacén en el último semestre.

17. Encuentra el cliente que ha realizado el alquiler más caro en el último año.

18. Lista las cinco categorías con más ingresos generados durante los últimos tres meses.

19. Obtén la cantidad de películas alquiladas por cada idioma en el último mes.

20. Lista los clientes que no han realizado ningún alquiler en el último año.
