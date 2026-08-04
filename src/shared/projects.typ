#import "@preview/brilliant-cv:4.0.1": cv-entry, cv-section

#cv-section("Projects")

// Convention for this section: `society` is the project's own name and
// `title` is where the work came from, because display_entry_society_first
// renders society bold above the title. That puts what was built in the
// heading and the client or engagement type in the subtitle.
#cv-entry(
  title: [Freelance],
  society: [Compliance & Privacy Agent],
  date: [2026],
  // Geography, consistent with every other entry's location column — not the
  // platform the work came through and not the cloud it ran on.
  location: [Remote],
  description: list(
    [Built a *RAG* agent that guides teams through achieving compliance certifications such as *SOC 2*, answering privacy and controls questions against current regulatory text. Served on *Google Cloud Run*.],
    [Ingested regulations, standards, and articles from the web on a *daily* schedule through *Cloud Run* jobs, so answers track requirements as they change rather than a stale snapshot.],
    [Embedded the corpus into a *vector database* for semantic search and served the model through *Vertex AI*, keeping ingestion, retrieval, and inference on a single platform.],
  ),
  tags: ("GCP", "Cloud Run", "Vertex AI", "RAG", "Vector Search"),
)

#cv-entry(
  title: [Offerland],
  society: [Farm Appraisal Platform],
  date: [2024 -- 2025],
  location: [BC, Canada],
  description: list(
    [Designed and developed a *Django*-based application to appraise farms; platform launched across British Columbia, Alberta, and Saskatchewan.],
    [Integrated heterogeneous data sources --- Canadian official sales records, soil information, and satellite imagery --- to predict per-farm market prices.],
    [Orchestrated data ingestion and cleaning pipelines with *Airflow*, providing scheduled runs, retries, and lineage visibility.],
    [Built an internal *Django Admin* console alongside the user panel so product managers could review user queries, feedback, and underlying data health.],
    [Deployed on *AWS*, combining *EC2* instances with *Lambda* functions.],
  ),
  tags: ("Python", "Django", "Airflow", "AWS", "Lambda"),
)
