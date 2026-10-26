// Cover letter — Qonto, Senior/Staff Go Backend Engineer, Barcelona,
// remote-friendly.
//
// Build: just letter qonto  →  build/parham-qonto-cover-letter.pdf
//
// Written 2026-10-26. Qonto's requirement list is deliberately generic
// ("you don't need to know our exact stack"); the stack line at the bottom of
// the posting is what to aim at: Go and Ruby, Kubernetes on AWS, PostgreSQL,
// Kafka, ELK. The letter leads on Go services handling money-adjacent,
// real-time work at Snapp! and on owning them in production, which is the
// "you build it, you own it" point the posting returns to twice.
//
// Gaps stated per the usual rule: Ruby (nowhere on the resume) and
// PostgreSQL depth (skills-only; MongoDB is the database a bullet evidences).
// No banking-domain claim is made.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Qonto — Engineering",
  recipient-address: "Barcelona",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior/Staff Go Backend Engineer — Barcelona",
)

Dear Qonto Engineering Team,

Your posting asks for engineers who own reliability in production, not just
at merge time. That is the part of backend work I care most about, and most of
what I can show you is about what happened after the merge.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I wrote and maintained backend services in *Go* for real-time order
processing and delivery tracking, and built a *real-time stream processing*
service that adjusted pricing to balance supply and demand --- it raised the
number of accepted rides by 5%. Pricing is not banking, but it shares the
property your posting describes: a wrong number is visible to a customer
immediately, so correctness and observability come first. I later led the
design of a microservice architecture for a high-volume delivery application
on *NATS*, handling over 300,000 messages per second, and built a unified
client SDK for our central message queue that raised its uptime by 5%.

Your platform runs on *Kubernetes on AWS* with *Kafka* for events, which is
close to home. I led the design of Snapp!'s company-wide cloud platform and
became lead engineer for its architecture; I ran Kafka on Kubernetes through
the _Strimzi_ operator, and wrote *Kubernetes operators* in Go to automate
_Argo CD_ authentication and authorisation. Today I run the AWS estate at
AveeHealth on managed *EKS* and *ECS*. On the quality side you describe ---
tests, monitoring, methodical incidents, root cause --- I implemented
monitoring and alerting with *OpenTelemetry*, and sharded our chat-message
MongoDB cluster to cut response time by half when it became the bottleneck.
My open-source record is public too: 20 merged pull requests across eight
`nats-io` repositories.

Two things stated rather than implied. I have not written *Ruby*
professionally, and my database depth is in MongoDB rather than
*PostgreSQL*. You say you hire people who transfer fast; Go is my main
language, and I would expect to be useful in it from the first weeks while I
pick up the rest.

I live in Barcelona and hold a Spanish residence permit valid to 2029.

Sincerely, \
Parham Alvani
