// Cover letter — Percona, Senior Backend Engineer (Go), PMM team, EMEA remote.
//
// Build: just letter percona  →  build/parham-percona-cover-letter.pdf
//
// Written 2026-11-03. PMM (Percona Monitoring and Management) is the open-
// source observability platform for MySQL, PostgreSQL and MongoDB; the role
// builds its Go backend (services, APIs, database integrations) on
// OpenTelemetry, Prometheus, VictoriaMetrics and ClickHouse, and pushes it
// toward agentic, LLM-assisted troubleshooting. The letter leads on Go backend
// services and the OpenTelemetry bullet, then databases operated on Kubernetes
// (the MongoDB sharding, RabbitMQ and Redis through operators), then the LLM
// work (Ollama behind LiteLLM, RAG, Pydantic AI) for the agentic direction.
//
// Gaps stated per the usual rule: Prometheus and Grafana are skills-only;
// no VictoriaMetrics or ClickHouse; no MySQL and no evidenced PostgreSQL; no
// MCP. A different Percona role (Go / MongoDB tools) was interviewed for
// earlier — see ~/org/Companies/Percona/Percona.md; the letter does not
// mention it.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Percona — PMM Engineering",
  recipient-address: "Remote, EMEA",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Backend Engineer (Go) — PMM",
)

Dear Percona Hiring Team,

PMM brings together three things I have done in production: backend services
in *Go*, observability, and the databases and infrastructure underneath. At Snapp!, Iran's largest ride-hailing platform
with more than 50 million users, I wrote backend services in *Go* for real-time
order processing and delivery tracking, designed a *NATS*-based architecture
handling more than 300,000 messages per second, and implemented monitoring and
alerting for real-time application observability with _OpenTelemetry_.

The databases were mine to run as well. I sharded the chat-message *MongoDB*
cluster and cut its response time by 50%, deployed _RabbitMQ_ and _Redis_ on
*Kubernetes* through their operators and custom resources, ran _Kafka_ with
the Strimzi operator, and wrote Kubernetes operators of my own to automate
ArgoCD authentication and authorization. I led the company-wide cloud platform
those systems ran on.

Your agentic direction is where my recent work is. I deployed an _Ollama_
cluster behind _LiteLLM_ to route between local and third-party models, built a
*RAG* compliance agent on Vertex AI that ingests regulatory text daily, and
built a clinical-notes pipeline with _Deepgram_ and _Pydantic AI_. On the
open-source side, I introduced and extended the Mainflux IoT platform for a
university lab's monitoring products. My Ph.D. is in computer networks.

Some things stated rather than implied. My observability work is
_OpenTelemetry_ instrumentation; I have not built on _Prometheus_,
_VictoriaMetrics_, _ClickHouse_ or _Grafana_ in production. My database depth is
*MongoDB* and Redis, not _MySQL_ or _PostgreSQL_ internals. And I have not built
with MCP.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
