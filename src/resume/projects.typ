#import "../lib.typ": cv-entry

= Projects

#cv-entry(
  role: "Farm Appraisal Platform",
  org: [*Python*, *Django*, *Airflow*],
  location: "BC, SK, AB",
)[
  - Designed and developed a *Django*-based application to appraise farms
    across British Columbia, Saskatchewan, and Alberta.
  - Integrated heterogeneous data sources --- Canadian official sales records,
    soil information, and satellite imagery --- to predict per-farm market prices.
  - Orchestrated data ingestion and cleaning pipelines with *Airflow*, providing
    scheduled runs, retries, and lineage visibility.
  - Built an internal *Django Admin* console alongside the user panel so
    product managers could review user queries, feedback, and underlying data
    health.
]
