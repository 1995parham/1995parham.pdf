// Cover letter — Depot, Staff Software Engineer, remote (North America or
// Europe).
//
// Build: just letter depot  →  build/parham-depot-cover-letter.pdf
//
// Written 2026-11-03. A Staff product engineer across the whole product: web
// console, APIs, CLI, GitHub integrations, billing, permissions, docs, and
// production debugging across services, databases and AWS. The letter leads
// on building platforms other engineers use (the Snapp! platform, the
// self-service FastAPI layer for data science, the client SDK), then on
// end-to-end product ownership at AveeHealth and Offerland, then on AWS.
//
// Gaps stated per the usual rule: no CI or build-tooling product work
// (BuildKit, remote cache, runners), GitHub Actions in skills only, no billing
// systems, TypeScript / React not on the resume (Vue and Go are), and
// MySQL / PlanetScale, ClickHouse and gRPC not on the resume. Staff scope is
// argued from "lead engineer for platform architecture", not claimed as a
// title.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Depot — Engineering",
  recipient-address: "Remote, Europe",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Staff Software Engineer — Remote, Europe",
)

Dear Depot Hiring Team,

Most of what I have built was used by other engineers. At Snapp!, Iran's largest ride-hailing
platform with more than 50 million users, I led the design and implementation
of the company-wide cloud platform and grew into lead engineer for platform
architecture. I built a *Python* / *FastAPI* serving layer that let the data
science team deploy their own models, self-service, from notebook to
platform, a unified client SDK that raised the uptime of our central messaging
queue by 5%, and Kubernetes operators that turned ArgoCD access into
declared configuration.

I like owning the whole path from an unclear problem to a running product. At
AveeHealth I led a new doctors panel in *Python* and *Vue* from technical
design to containerised deployment, migrated users off the old system
without disruption, and built an AI pipeline that turns doctor--patient
sessions into structured clinical notes. At Offerland I designed a farm
appraisal platform, now live in three Canadian provinces, with an internal
console so product managers could see user queries, feedback and data health
for themselves.

The operational side is where I have spent most of my time. I ran AveeHealth
on *AWS* with *EKS* and *ECS*, deployed Offerland on EC2 and Lambda, replaced
Snapp!'s cron jobs with *Airflow* so failed runs could be seen and re-run, and
added monitoring and alerting with *OpenTelemetry*. My strongest language is *Go*,
and I taught Internet Engineering for seven semesters, so explaining a design
clearly is a habit.

Some things stated rather than implied. I have not worked on a CI or build
product: BuildKit, remote caching and runners are new to me, and GitHub
Actions is in my skills list, not my work history. I have not built billing.
My frontend has been _Vue_, not _React_ or _TypeScript_, and MySQL,
ClickHouse and gRPC are not on my resume.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
