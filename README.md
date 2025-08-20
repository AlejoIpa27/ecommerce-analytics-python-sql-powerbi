# Proyecto de Analytics: E-commerce (Python + SQL + Power BI)

## Estructura
```
.
├── data
│   ├── raw/              # CSV crudos
│   └── processed/        # CSV limpios/listos para BI/SQL
├── notebooks
│   └── 01_limpieza_y_eda.ipynb
├── sql
│   ├── schema.sql
│   └── queries.sql
├── powerbi
│   ├── README.md
│   ├── measures_dax.txt
│   └── power_query_fact_sales.m
├── assets
│   └── (coloca screenshots del dashboard)
├── LICENSE
└── README.md
```

## Setup rápido
1. **Python** (3.10+):
   ```bash
   pip install pandas numpy jupyter nbformat
   ```
2. Ejecutá el notebook `notebooks/01_limpieza_y_eda.ipynb` para generar `data/processed/fact_sales.csv` y tablas de dimensión.
3. **SQL**: Importá `schema.sql` y cargá los CSVs procesados en tus tablas.
4. **Power BI**: Seguí `powerbi/README.md` y las medidas en `measures_dax.txt`.

## Consultas destacadas (SQL)
- Revenue mensual, top productos, revenue por canal x medio de pago, CLV simple, repeat rate.

## Licencia
MIT
