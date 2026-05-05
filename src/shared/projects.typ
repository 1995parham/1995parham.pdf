#import "@preview/brilliant-cv:4.0.1": cv-entry, cv-section

#cv-section("Projects")

#cv-entry(
  title: [Farm Appraisal Platform],
  society: [Personal Project],
  date: [2024 -- 2025],
  location: [BC, SK, AB],
  description: list(
    [Designed and developed a *Django*-based application to appraise farms across British Columbia, Saskatchewan, and Alberta.],
    [Integrated heterogeneous data sources --- Canadian official sales records, soil information, and satellite imagery --- to predict per-farm market prices.],
    [Orchestrated data ingestion and cleaning pipelines with *Airflow*, providing scheduled runs, retries, and lineage visibility.],
    [Built an internal *Django Admin* console alongside the user panel so product managers could review user queries, feedback, and underlying data health.],
  ),
  tags: ("Python", "Django", "Airflow"),
)
