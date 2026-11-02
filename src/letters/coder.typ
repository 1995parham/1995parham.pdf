// Cover letter — Coder, Software Engineer (Enterprise Experience, Backend),
// Europe remote.
//
// Build: just letter coder  →  build/parham-coder-cover-letter.pdf
//
// Written 2026-11-03. The Enterprise Experience team owns what operators of a
// self-hosted Coder deployment need: scaling, upgrades, database migrations,
// observability, reporting, audit and security, in Go on Postgres and
// Kubernetes, with on-call. The letter leads on running the company-wide
// platform at Snapp! for internal teams (the operator's seat), the ArgoCD
// access-control operators, and the scaling work (MongoDB sharding, NATS),
// then on SOC 2 / compliance from the compliance agent and Kaytu.
//
// Gaps stated per the usual rule: Terraform (Coder's templates) and
// Prometheus / Grafana are in skills only, PostgreSQL is in skills only (the
// schema work evidenced is Django models), and no audit-log or reporting
// feature for an enterprise product. The level and band are below his
// (2+ years, UK / Ireland / Poland tiers only); the letter does not argue it.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Coder — Enterprise Engineering",
  recipient-address: "Remote, Europe",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Software Engineer — Enterprise Experience, Backend",
)

Dear Coder Hiring Team,

For five years I was the operator your Enterprise Experience team builds for.
At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I led the design and implementation of the company-wide cloud platform
and grew into lead engineer for platform architecture. I wrote Kubernetes
operators with custom resources to automate authentication and authorization
for ArgoCD, so access came from configuration rather than being granted by
hand --- the kind of control an administrator expects from the tools they
run.

Scaling under real load has been a constant. I led the design of a
microservice architecture on *NATS* handling more than 300,000 messages per
second, sharded the chat-message *MongoDB* cluster to cut response time by
50%, and built a unified client SDK that raised the uptime of our central
messaging queue by 5%. I added monitoring and alerting with *OpenTelemetry*,
and I wrote backend services in *Go* for real-time order processing and
delivery tracking, where concurrency mistakes show up as lost orders.

Data that cannot break in production is familiar too. At AveeHealth I
architected the Django database models --- the project's most significant
technical challenge --- and led a new doctors panel that migrated users off
the old system without disruption, running on *EKS* and *ECS* on AWS. On the
compliance side, I built an agent that guides teams through SOC 2 controls,
and worked on Kaytu, a platform that reviewed Azure resources against
compliance standards.

Some things stated rather than implied. Coder's templates are Terraform, and
Terraform is in my skills list but not in my work history; the same is true
of Prometheus, Grafana and PostgreSQL. I have not built an audit-log or
reporting feature inside an enterprise product. Go is my strongest language.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
