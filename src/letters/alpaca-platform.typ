// Cover letter — Alpaca, Staff Software Engineer – Platform,
// Remote – Europe / Americas.
//
// Build: just letter alpaca-platform  →  build/parham-alpaca-platform-cover-letter.pdf
//
// Written 2026-11-13. The role owns Alpaca's event-streaming platform
// (Redpanda, the UTS ecosystem, shared client libraries, user-facing
// streaming) — about two-thirds of the job — plus AuthN/AuthZ direction,
// developer experience and QA, and AI-native engineering. Go, Kubernetes,
// Helm, PostgreSQL.
//
// The letter leads on the NATS delivery architecture at Snapp! (300k msg/s),
// the unified client SDK (+5% queue uptime), Kafka on Kubernetes with Strimzi,
// and the company-wide platform with the ArgoCD authn/authz operators.
//
// Gaps stated per the usual rule: highest title is Senior / lead engineer for
// platform architecture, not Staff; no resume bullet shows realtime delivery to
// end clients over WebSockets, SSE or gRPC streaming; Kafka was operated, while
// the architecture work was on NATS; PostgreSQL is in skills.typ only.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Alpaca — Platform",
  recipient-address: "Remote, Europe",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Staff Software Engineer — Platform",
)

Dear Alpaca Hiring Team,

You want the engineer who decides what the streaming platform looks like in
two years and then builds the hard part. Event backbones and the shared code
around them are where I have spent most of my career. At Snapp!, Iran's
largest ride-hailing platform with more than 50 million users, I led the
design of the microservice architecture for our high-volume delivery
application on *NATS*, handling more than 300,000 messages per second, and I
mentored engineering teams on how to use messaging systems well.

I also worked on the library side. I built a unified client SDK for our
central messaging queue, and it raised the uptime of the queue by 5%. Alongside NATS I deployed and ran
*Kafka* on Kubernetes with the *Strimzi* operator, and *RabbitMQ* and *Redis*
through their operators. Before that I built a real-time stream-processing
service in *Go* that adjusted ride pricing to balance demand and supply, which
increased accepted rides by 5%.

Across those years I led the design and implementation of the company-wide
cloud platform at Snapp! and grew into lead engineer for platform architecture. That
included Kubernetes operators that automated *ArgoCD* authentication and
authorisation, *OpenTelemetry* monitoring and alerting, and a self-service path
that let the data science team take a model from a notebook to a production
API. Since 2025 I have run the platform of AveeHealth, a Canadian digital-health
startup, on *AWS* with *EKS* and *ECS*.

Some things stated rather than implied. My highest title is Senior Cloud
Engineer, with the lead role for platform architecture; I have not held a Staff
title. My architecture work was on NATS; I have operated Kafka in production,
but I have not designed a platform around Kafka or Redpanda partitioning and
consumer groups. And I have not owned realtime delivery to end clients over
WebSockets, SSE or gRPC streaming at your scale --- that is the part of this
role I would learn first.

I live in Barcelona, on CET, and hold a Spanish residence permit valid to
2029, with the right to work without sponsorship.

Sincerely, \
Parham Alvani
