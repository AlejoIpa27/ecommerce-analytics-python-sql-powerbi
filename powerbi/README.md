# Power BI: Modelo y Dashboard

## Modelo sugerido
- **Tabla de hechos:** `fact_sales` (filtrar `status = "Completed"` en medidas o en el modelo).
- **Dimensiones:** `dim_customers`, `dim_products`, `Calendar`.
- Relacionar `Calendar[Date]` -> `fact_sales[order_date]`, `dim_customers[customer_id]` -> `fact_sales[customer_id]`, `dim_products[product_id]` -> `fact_sales[product_id]`.

## Measures (DAX)
Ver `measures_dax.txt` en esta carpeta.

## Power Query (M)
Importar `data/processed/fact_sales.csv` con el script en `power_query_fact_sales.m` o bien cargar CSV y tipar columnas.

## Visuales recomendados
1. **Tarjetas (KPI):** Revenue, Profit, Orders, Customers, Profit Margin %.
2. **Línea por mes:** Revenue por `order_month` (usar `Calendar[Date]` en eje).
3. **Barras apiladas:** Revenue por `category` y `channel`.
4. **Mapa:** Revenue por `city` (Argentina).
5. **Tabla:** Top 10 productos por revenue.
6. **Matriz:** Revenue por `channel` x `payment_method`.
7. **Segmentadores:** Año, Mes, Canal, Categoría, Segmento.

## Slicers y filtros
- Agregar filtro a nivel de página para `status = "Completed"` o crear medidas que lo contemplen.

## Exportar
- Guardar el archivo como `dashboard_ecommerce.pbix` en la carpeta `powerbi/`.