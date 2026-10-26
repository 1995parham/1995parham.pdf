// Cover letter — Datadog, Senior Software Engineer - Distributed Systems
// (ODP Governance), Madrid.
//
// Build: just letter datadog  →  build/parham-datadog-cover-letter.pdf
//
// Written 2026-10-26. ODP Governance builds cost controls and data-hygiene
// tools across Metrics, Logs and APM, and the posting stresses becoming
// productive in unfamiliar systems, cross-team work and carrying a solution
// from one product to another. The letter therefore leads on high-volume Go
// and NATS, then on the shared-platform record at Snapp! (one SDK, one
// platform, many teams), which is the cross-product pattern they describe.
//
// Gaps stated per the usual rule: observability is evidenced only by the
// OpenTelemetry bullet, so no claim of telemetry-pipeline or cost-governance
// depth; Cassandra and Elasticsearch are nowhere on the resume.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Datadog — ODP Governance",
  recipient-address: "Madrid, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Software Engineer — Distributed Systems (ODP Governance)",
)

Dear Datadog Hiring Team,

Your team's description of its own work --- take a control that worked for
Logs and make it work for APM --- is the kind of problem I have spent the last
few years on: one solution, built once and carried across many teams' systems.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I started on the Shared Services team writing backend services in *Go*
for real-time order processing and delivery tracking, and built a *real-time
stream processing* service that adjusted pricing to balance supply and demand,
raising accepted rides by 5%. I later led the design of a microservice
architecture for a high-volume delivery application on *NATS*, handling over
300,000 messages per second, and built a unified client SDK for our central
message queue that raised its uptime by 5%. When
our chat-message MongoDB cluster became the bottleneck, I sharded it and cut
response time by half.

The cross-team part of the role is where most of my senior work sits. I led
the design of Snapp!'s company-wide cloud platform and became lead engineer for
its architecture, which meant learning other teams' systems well enough to
change them: Kafka through _Strimzi_, RabbitMQ and Redis through their
operators, KServe and Knative for the ML teams, and *Kubernetes operators* in
Go that automated _Argo CD_ authentication and authorisation. I mentored teams
on messaging practice, including NATS, and I have 20 merged pull requests
across eight `nats-io` repositories, including `nack`, a JetStream Kubernetes
controller. Today I run the AWS estate at AveeHealth on managed *EKS* and *ECS*.

I use AI coding tools every day and review their output the way I would a
colleague's pull request: built, tested and read before it ships.

Two things stated rather than implied. My observability work has been on the
producing side --- monitoring and alerting with *OpenTelemetry* --- not on
building a telemetry ingestion or cost-governance product, and I have not run
*Cassandra* or *Elasticsearch* in production. Distributed systems in Go at high
volume is the part I bring from day one.

I live in Barcelona, hold a Spanish residence permit valid to 2029, and am
happy to relocate to Madrid for the role.

Sincerely, \
Parham Alvani
