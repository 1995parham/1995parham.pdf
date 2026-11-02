// Cover letter — Upsun (formerly Platform.sh), Software Engineer, remote Spain.
//
// Build: just letter upsun  →  build/parham-upsun-cover-letter.pdf
//
// Written 2026-11-03. A general Software Engineer opening across teams: end-to-
// end ownership, Python / Go / TypeScript, APIs and relational data, CI/CD and
// cloud, with bonus points for cloud platforms, developer tools, identity and
// access, provisioning and orchestration, and frontend for technical products.
// The letter leads on the Snapp! company-wide cloud platform (Upsun sells a
// platform; he built one in-house), the ArgoCD auth operators (IAM bonus) and
// the FastAPI self-service serving layer (developer tooling), then end-to-end
// product work in Python and Vue at AveeHealth and Offerland.
//
// Gaps stated per the usual rule: TypeScript is not on the resume (Go and
// Python are, Vue for frontend); no bullet describes automated testing or CI
// pipeline work (GitHub Actions is skills-only); no bullet shows AI coding
// tools in his own workflow. The Greenhouse form has no cover-letter field,
// only Resume/CV, so this is for pasting or for a recruiter conversation.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Upsun — Engineering",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Software Engineer — Remote, Spain",
)

Dear Upsun Hiring Team,

You build the platform that takes code from a developer's branch to
production, and I built the in-house version of that. At Snapp!, Iran's
largest ride-hailing platform with more than 50 million users, I led
the design and implementation of the company-wide cloud platform on
*Kubernetes* and progressed to lead engineer for its architecture. I wrote
Kubernetes operators to automate ArgoCD authentication and authorization, and
built a *Python* / _FastAPI_ serving layer that gave the data science team
self-service deployment of their models from notebook to production.
The platform was the product, and the engineers using it were the customers.

I also own work end to end. At AveeHealth I led a new doctors panel in
*Python* and _Vue_ from technical design to containerized deployment on *AWS*,
migrated users from the old system without disruption, and designed the Django
data models that were the hardest part of the project. At Offerland I built a
farm-appraisal platform now live across three Canadian provinces, integrating
public sales records, soil data and satellite imagery behind scheduled
_Airflow_ pipelines.

*Go* is my strongest language: backend services for real-time order processing
at Snapp!, a *NATS*-based architecture handling more than 300,000 messages per
second, and an on-device agent for a US security startup that executes
commands pushed from the backend.

Some things stated rather than implied. I have not worked in _TypeScript_; my
frontend has been _Vue_. My resume does not describe test engineering or CI
pipeline work, so I will not claim them as strengths here. And while I have
built LLM systems --- a RAG compliance agent, a clinical-notes pipeline --- my
resume does not show AI coding tools in my own workflow.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
