// Cover letter — Supabase, Platform Engineer, Managed Postgres, remote.
//
// Build: just letter supabase  →  build/parham-supabase-cover-letter.pdf
//
// Written 2026-10-26. The team builds the control plane for Supabase's
// managed Postgres fleet: multi-tenant distributed services in Go and/or
// TypeScript on AWS with container orchestration, IaC (Pulumi preferred) and
// on-call. The letter leads on Go distributed systems (NATS at 300k msg/s,
// the client SDK) and on running stateful systems on Kubernetes through
// operators, which is the closest evidence to operating a database fleet.
//
// Gaps stated per the usual rule: PostgreSQL (skills-only; MongoDB is the
// database a bullet evidences), Pulumi/Terraform (skills-only for Terraform,
// nothing for Pulumi), and TypeScript (nowhere on the resume).

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Supabase — Managed Postgres",
  recipient-address: "Remote",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Platform Engineer — Managed Postgres",
)

Dear Supabase Team,

Running other people's stateful systems on shared infrastructure, safely and
without them noticing, is most of what I have done for the last five years.
Your Managed Postgres team does that for millions of databases, and I would
like to help build it.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I led the design of a microservice architecture for a high-volume
delivery application on *NATS*, handling over 300,000 messages per second, and
built a unified client SDK for our central message queue that raised its
uptime by 5%. Before that, on the Shared Services team, I wrote and maintained
backend services in *Go* for real-time order processing and delivery tracking.
*Go* is my main language, and I have 20 merged pull requests across eight
`nats-io` repositories, including `nack`, a JetStream Kubernetes controller,
with its end-to-end tests.

The platform side is where the overlap with your role is closest. I led the
design of Snapp!'s company-wide cloud platform and became lead engineer for its
architecture. Stateful services ran on it through their operators --- Kafka
with _Strimzi_, RabbitMQ and Redis through their custom resources --- and I
wrote *Kubernetes operators* in Go to automate _Argo CD_ authentication and
authorisation. When our chat-message MongoDB cluster became the bottleneck, I
sharded it and cut response time by half. Today I run the AWS estate at
AveeHealth on managed *EKS* and *ECS*, and I implemented monitoring and
alerting with *OpenTelemetry* at Snapp!.

Three things stated rather than implied. My database depth is in MongoDB, not
*PostgreSQL* internals or replication; I have not used *Pulumi*, and my
infrastructure-as-code has been operator-, Helm- and GitOps-based rather than
Terraform; and I have not written *TypeScript* professionally. Go and
distributed systems are what I bring from the first week.

I live in Barcelona and hold a Spanish residence permit valid to 2029, so I
can work for you from Spain without sponsorship.

Sincerely, \
Parham Alvani
