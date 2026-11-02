// Cover letter — WunderGraph, Senior/Staff Golang Engineer, EMEA remote.
//
// Build: just letter wundergraph  →  build/parham-wundergraph-cover-letter.pdf
//
// Written 2026-11-03. The role works on the Cosmo Router and its engine,
// graphql-go-tools: a Go "GraphQL compiler" that parses, normalises, plans and
// executes federated queries against GraphQL, gRPC, OpenAPI and SOAP
// back ends, under hard performance and low-GC requirements. The letter leads
// on Go in production at Snapp! (real-time order processing and delivery
// tracking) and the Go device agent, then on NATS at 300k msg/s and Kafka,
// which the router's event-driven subscriptions speak, and on Pion at Avidnet.
//
// Gaps stated per the usual rule: no AST / compiler work, no GraphQL
// Federation (only a plain GraphQL API at Nahalco), no profiling or low-GC
// tuning evidenced by a bullet, no gRPC / OpenAPI / SOAP on the resume. Open
// source is not mentioned: the resume carries no contributions, and the NATS
// pull requests cited in the Synadia letter are not on it.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "WunderGraph — Engineering",
  recipient-address: "Remote, EMEA",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior/Staff Golang Engineer — Cosmo Router, EMEA",
)

Dear WunderGraph Hiring Team,

You describe the Router as the place where every request passes and where
performance, security and stability cannot slip. That is the kind of code I
have spent most of my career on. At Snapp!, Iran's largest ride-hailing
platform with more than 50 million users, I developed and maintained backend
services in *Go* for real-time order processing and delivery tracking, where a
slow path is a late driver, and I later grew into lead engineer for platform
architecture on the company-wide cloud platform.

Two pieces of that work touch the Router directly. I led the design of a
microservice architecture for a high-volume delivery application on *NATS*,
handling more than 300,000 messages per second, and ran *Kafka* on Kubernetes
through the Strimzi operator --- the same brokers your event-driven
subscriptions connect to. I also built a unified client SDK that raised the
uptime of our central messaging queue by 5%, which taught me how much of a
system's reliability lives in the client that sits in every request path.

Go has been my main language for a long time. At Avidnet I built in-app video
calling on *WebRTC* with the _Pion_ framework, one of its earliest adoptions in
the region, handling 1,000 concurrent calls; more recently I built the
on-device agent in *Go* for a US security startup, streaming telemetry to the
backend over a message broker and executing the commands it sends back. I hold
a Ph.D. in Computer Network and have taught Go in workshops and talks.

Some things stated rather than implied. I have not worked on ASTs, parsers or
query planning, and I have not used GraphQL Federation; my GraphQL work is an
API I built at Nahalco. Nothing on my resume shows profiling or low-GC tuning,
and gRPC, OpenAPI and SOAP are not on it either. You want someone who goes deep on
one topic for weeks; the engine is the topic I would choose.

I live in Barcelona, on CET, and hold a Spanish residence permit valid to
2029, with the right to work without sponsorship.

Sincerely, \
Parham Alvani
