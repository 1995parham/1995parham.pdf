// Cover letter — Back Market, Senior Software Engineer, Backend Major, Code
// Foundations, Barcelona hybrid (3 office days, Monday mandatory).
//
// Build: just letter backmarket  →  build/parham-backmarket-cover-letter.pdf
//
// Written 2026-11-03. Code Foundations builds the shared tools, libraries and
// standards the other squads build on, in a monolith-to-services migration.
// Stack: Python / FastAPI, Go, Django (being phased out), Kafka, RabbitMQ,
// Redis, GCP, Kubernetes, ArgoCD; frontend Vue / TypeScript / Nuxt. The letter
// leads on the unified client SDK and the self-service FastAPI layer at
// Snapp! (shared tooling other teams build on), then the PHP migration, the
// stack overlap, and the Vue doctors panel for the frontend half.
//
// Gaps stated per the usual rule: TypeScript and Nuxt (not on the resume —
// Vue is, from AveeHealth), Datadog, BigQuery, Celery / SQLAlchemy (none on
// the resume).

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Back Market — Code Foundations",
  recipient-address: "Barcelona, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Software Engineer — Backend Major, Code Foundations",
)

Dear Back Market Hiring Team,

Code Foundations builds the tools, libraries and standards the other squads
build on, and that is the work I have found most worth doing. At Snapp!, Iran's
largest ride-hailing platform with more than 50 million users, I wrote a
unified client SDK for our central messaging queue and raised its uptime by 5%.
I built a *Python* / *FastAPI* serving layer that let the data science team
take their models from notebook to production HTTP APIs themselves, and I
mentored engineering teams on best practices for our messaging systems. Shared
code that other teams adopt is where one team's work multiplies.

You are moving from a monolith to loosely coupled services, and I have done
that move. On Snapp!'s shared services team I migrated critical legacy *PHP*
applications to a modern platform and cloud infrastructure, raising their
availability by 20% and making new features faster to ship, and wrote backend
services in *Go* for real-time order processing and delivery tracking. Later I
led the design of a microservice architecture for a high-volume delivery
application on *NATS*, handling more than 300,000 messages per second, and led
the company-wide cloud platform on *Kubernetes*: operators that automate _Argo
CD_ authentication and authorization, *Kafka* through the _Strimzi_ operator,
and _RabbitMQ_ and _Redis_ through theirs.

Much of the rest of your stack is familiar. I have built *Django* systems ---
the data models at AveeHealth, and a farm-appraisal platform at Offerland launched
across three Canadian provinces --- and on *GCP* I built a compliance
agent on _Cloud Run_ and _Vertex AI_. For the frontend half, I led a new
doctors panel at AveeHealth in *Python* and *Vue* and moved its users from the
old system without disruption.

Some things stated rather than implied. My frontend has been _Vue_ without
_TypeScript_ or _Nuxt_, so I would be learning both here. I have not used
_Datadog_ or _BigQuery_; my observability work has been _OpenTelemetry_. And
_Celery_ and _SQLAlchemy_ are not on my resume.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship. I am ready to work from your Barcelona
office three days a week.

Sincerely, \
Parham Alvani
