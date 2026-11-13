// Cover letter — Alpaca, Senior Software Engineer – Ledger, Global Anywhere.
//
// Build: just letter alpaca-ledger  →  build/parham-alpaca-ledger-cover-letter.pdf
//
// Written 2026-11-13. The Ledger team builds the ledger that keeps a complete
// and correct view of everything that has happened in every account; it is
// the source of truth for many services. Must-haves: Go, defect-free and
// maintainable code, debugging, protobuf / gRPC, GCP, PostgreSQL. Nice to
// have: finance or accounting, distributed systems, event-driven systems and
// brokers (Redpanda), remote and startup experience.
//
// The letter leads on Go services for real-time order processing at Snapp!,
// the stream-processing pricing service, data integrity in the AveeHealth
// Django models, and the NATS / Kafka work for the event-driven nice-to-have.
//
// Gaps stated per the usual rule: no ledger, accounting or financial-services
// work; no protobuf or gRPC on the resume; PostgreSQL is in skills.typ only;
// GCP only through Cloud Run and Vertex AI on a freelance project.
// Applied alongside Staff Platform and Clearing on the same day.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Alpaca — Ledger",
  recipient-address: "Remote",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Software Engineer — Ledger",
)

Dear Alpaca Hiring Team,

A ledger is only useful if every service can trust it, and that kind of
correctness is the work I like most. At Snapp!, Iran's largest ride-hailing
platform with more than 50 million users, I built and maintained backend
services in *Go* for real-time order processing and delivery tracking, where
performance and reliability were the requirements. I also built a real-time
stream-processing service that adjusted ride pricing to balance demand and
supply, which increased accepted rides by 5%.

Data has been the hard part more than once. At AveeHealth, a
Canadian digital-health startup, I designed and implemented the Django data
models, the most difficult technical problem in that project, to keep the
data correct, and I moved users from the old system to a new doctors panel
without disruption. At Snapp! I sharded the chat-message *MongoDB* cluster,
which cut response time by 50%.

For the event-driven side, I led the design of a microservice architecture on
*NATS* that handles more than 300,000 messages per second, and I ran *Kafka* on
Kubernetes with the *Strimzi* operator. I have worked remotely for a startup
since 2025.

Some things stated rather than implied. I have not built a ledger or worked
in financial services or accounting. Protobuf and gRPC are not on my resume,
and no project on it shows depth in PostgreSQL.
My GCP work is limited to Cloud Run and Vertex AI on a freelance project.

I live in Barcelona, on CET, and hold a Spanish residence permit valid to
2029, with the right to work without sponsorship. I have also applied to your
Platform and Clearing teams.

Sincerely, \
Parham Alvani
