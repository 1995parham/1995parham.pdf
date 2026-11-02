// Cover letter — Sysdig, Senior Software Engineer, Monitor Ingestion team,
// Flexible (remote) Spain.
//
// Build: just letter sysdig  →  build/parham-sysdig-cover-letter.pdf
//
// Written 2026-11-03. The Monitor Ingestion team owns metrics collection end
// to end: the agent on customer hosts and Kubernetes nodes, then ingestion and
// processing in the Sysdig backend. The letter leads on the Swift AI device
// agent (Go, on customer devices, telemetry up and commands down over a
// broker), then the Snapp! pipeline side (NATS at 300k msg/s, real-time stream
// processing, OpenTelemetry), then the low-level networking work (the Layer-2
// transport protocol, the Ph.D.).
//
// Gaps stated per the usual rule: Rust and C/C++ are skills-only (Go is the
// evidenced language), no eBPF, kernel instrumentation or container-runtime
// internals, and Prometheus is skills-only — OpenTelemetry is the only
// evidenced observability work.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Sysdig — Monitor Engineering",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Software Engineer — Monitor Ingestion",
)

Dear Sysdig Hiring Team,

Your Monitor Ingestion team owns the path from an agent on a customer's host to
the data in your backend, and I have built both ends of that path. For a US
security startup I built the on-device agent in *Go* that runs on their
customers' managed devices, streams telemetry upstream over a message broker
and executes the commands the backend pushes back down, and I packaged and
deployed the services behind it with _Docker_ and *Kubernetes*.

On the backend side, at Snapp!, Iran's largest ride-hailing platform with more
than 50 million users, I designed a *NATS*-based microservice architecture that
handles more than 300,000 messages per second, built a real-time stream
processing service that rebalanced pricing against demand, and wrote backend
services in *Go* for real-time order processing and delivery tracking. I also
implemented monitoring and alerting with _OpenTelemetry_, and ran the
company-wide *Kubernetes* platform, including operators I wrote to automate
ArgoCD authentication and authorization. Before that, I engineered a reliable
Layer-2 transport protocol on raw radio modules and load-tested an IoT platform
to 1,000 concurrent devices; my Ph.D. is in computer networks.

I am at my best on the problems you describe: performance, scalability and
correctness across a whole pipeline, and leading the design that ties the
pieces together. At Snapp! I progressed to lead engineer for platform
architecture and mentored teams on messaging systems.

Some things stated rather than implied. *Go* is my production language; I have
not shipped production *Rust* or _C/C++_. I have not worked with _eBPF_, kernel
instrumentation or the internals of container runtimes. And my observability
work is _OpenTelemetry_ instrumentation, not building a metrics backend or
operating _Prometheus_ at scale.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
