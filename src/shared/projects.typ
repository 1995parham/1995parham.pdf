#import "@preview/brilliant-cv:4.0.1": cv-entry, cv-section

#cv-section("Projects")

#cv-entry(
  title: [Farm Appraisal Platform],
  society: [Offerland],
  date: [2024 -- 2025],
  location: [BC, Canada],
  description: list(
    [Designed and developed a *Django*-based application to appraise farms; platform launched across British Columbia, Alberta, and Saskatchewan.],
    [Integrated heterogeneous data sources --- Canadian official sales records, soil information, and satellite imagery --- to predict per-farm market prices.],
    [Orchestrated data ingestion and cleaning pipelines with *Airflow*, providing scheduled runs, retries, and lineage visibility.],
    [Built an internal *Django Admin* console alongside the user panel so product managers could review user queries, feedback, and underlying data health.],
  ),
  tags: ("Python", "Django", "Airflow"),
)
