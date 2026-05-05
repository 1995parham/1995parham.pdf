#import "../lib.typ": cv-entry

= Employment

#cv-entry(
  dates: "Jan 2025 -- Jan 2026",
  role: "Senior Software Engineer",
  org: "AveeHealth",
  location: "Vancouver, B.C.",
)[
  - Spearheaded the development of a new doctors panel using *Python* and
    React, successfully migrating users from the old system without disruption.
  - Managed the end-to-end development lifecycle, from technical design to
    containerized deployment with Docker.
  - Architected and implemented the Django database models, overcoming the
    project's most significant technical challenge to ensure data integrity
    and system functionality.
  - Built an AI-powered transcription pipeline using *Deepgram*, *RAG*, and
    *Pydantic AI* to transcribe doctor-patient sessions and generate structured
    SOAP (Subjective, Objective, Assessment, Plan) notes.
]

#cv-entry(
  dates: "Oct 2020 -- Dec 2025",
  role: "Senior Cloud Engineer",
  org: "Snapp!",
  location: "Tehran, Iran",
)[
  - Led the design and implementation of a company-wide cloud platform,
    progressing to lead engineer for platform architecture.
  - Engineered Kubernetes operators (CRDs) to automate ArgoCD authentication
    and authorization.
  - Led the design of a scalable microservice architecture for a high-volume
    delivery application, leveraging *NATS* to handle over 300k messages/sec.
  - Implemented *KServe* and *Knative* on *Kubernetes* to build ML pipelines,
    reducing resource consumption and boosting data gathering by 10%.
  - Built a *Python* / *FastAPI* serving layer for the data science team,
    exposing their models as production HTTP APIs and enabling self-service
    deployment from notebook to platform.
  - Deployed an *Ollama* cluster to host local LLM models and integrated
    *LiteLLM* to distribute load between local and third-party services.
  - Replaced legacy cron jobs with *Airflow* for periodic data processing,
    enhancing platform reliability with improved monitoring and re-run
    capabilities.
  - Deployed and managed Kafka on Kubernetes using the *Strimzi* operator.
  - Mentored engineering teams on best practices for messaging systems,
    including NATS.
  - Improved Central Messaging Queue uptime by 5% by creating a unified
    client SDK.
]

#cv-entry(
  dates: "Jan 2019 -- Oct 2020",
  role: "Software Engineer (Shared Services Team)",
  org: "Snapp!",
  location: "Tehran, Iran",
)[
  - Optimized critical legacy applications (written in PHP) by migrating them
    to a modern platform and cloud infrastructure, increasing availability by
    20% and facilitating faster rollout of new functionalities.
  - Developed a *real-time stream processing* service to dynamically adjust
    pricing and balance demand and supply, resulting in a 5% increase in the
    number of accepted rides.
  - Developed and maintained backend services in *Golang* to ensure high
    *performance* and *reliability* for real-time order processing and
    *delivery tracking*.
]

#cv-entry(
  dates: "Jan 2017 -- Jan 2019",
  role: "Software Architect",
  org: "IoT Working Group of Amirkabir University of Technology",
  location: "Tehran, Iran",
)[
  - *Grant Funding*: Secured and managed a \~\$30,000 (100M Toman) university
    research grant to establish the IoT laboratory and launch pilot projects.
  - *Low-Level Protocol Design*: Engineered a custom Reliable Layer-2 Transport
    Protocol (implementing Stop-and-Wait ARQ with Retry logic) on top of raw
    NRF radio modules to ensure guaranteed packet delivery in noisy environments.
  - *Scalability Benchmarking*: Achieved stable performance for 1,000 concurrent
    IoT devices during load testing of the "Nahal" platform.
  - Introduced and extended the open-source *IoT platform Mainflux* to build
    a scalable backend for environmental monitoring products.
  - Developed *microservices* in *Python* and *Golang* to integrate sensors,
    actuators, and gateways with IoT platforms.
]

#cv-entry(
  dates: "Jul 2013 -- Mar 2017",
  role: "Software Engineer",
  org: "Nahalco",
  location: "Tehran, Iran",
)[
  - Developed a *GraphQL* API for the IoT Platform, enabling users to filter
    crop data with different filters.
  - Provided a data-processing pipeline using *Apache Spark* to ingest stock
    information, deployed on a *serverless-like* architecture using
    *Docker Swarm*.
]

#cv-entry(
  dates: "Jun 2014 -- May 2016",
  role: "Software Engineer",
  org: "Avidnet",
  location: "Tehran, Iran",
)[
  - *WebRTC Innovation*: Achieved an in-application video call solution using
    *WebRTC* based on the *Pion Framework (Go)*; this was one of the earliest
    adoptions of Pion in the region, handling 1,000 concurrent calls via
    distributed design.
  - Increased application installation rate by 5% through the addition of
    stable video calling features.
  - Configured bare-metal infrastructure, including *HPE ProLiant DL380 Gen9*
    servers with *VMware ESXi*.
  - Deployed services using *Docker Swarm* across staging and production
    environments.
]
