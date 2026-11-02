// Cover letter — Veriff, Senior Software Engineer, Verification Platform,
// remote (Spain).
//
// Build: just letter veriff  →  build/parham-veriff-cover-letter.pdf
//
// Written 2026-11-02. The Verification Platform team owns the workflow
// orchestration engine and the automated decisioning pipeline that the
// Identity, Fraud and End User Platform teams build on: Python, event-driven,
// message queues, idempotency, backpressure, on-call. The letter leads on the
// messaging work at Snapp! (NATS at 300k msg/s, the queue SDK, Kafka, RabbitMQ)
// and Airflow, then on the Python services.
//
// Gaps stated per the usual rule: SQS specifically, identity-verification
// domain knowledge, and the balance of his large-scale work being Go rather
// than Python.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Veriff — Verification Platform",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Software Engineer — Verification Platform",
)

Dear Veriff Hiring Team,

Your Verification Platform team owns the engine other teams build on, and the
work you list --- backpressure, idempotency, retries, backwards compatibility,
removing single points of failure --- is the work I have spent most of my
career on. At Snapp!, Iran's largest ride-hailing platform with more than 50
million users, I led the design of a microservice architecture for a
high-volume delivery application on *NATS*, handling more than 300,000
messages per second, and became lead engineer for the company-wide platform
those services ran on.

The part closest to your role is what other teams depended on. I built a
unified client SDK for the central message queue, so every team handled
connections, retries and failures the same way; it raised the queue's uptime
by 5%. I ran *Kafka* on Kubernetes through the _Strimzi_ operator and
*RabbitMQ* and *Redis* through theirs, replaced fragile cron jobs with
*Airflow* so periodic processing gained retries, re-runs and monitoring, and
added monitoring and alerting with *OpenTelemetry*. When the chat-message
_MongoDB_ cluster became the bottleneck, I sharded it and cut response time by
half.

In *Python*, I built a _FastAPI_ serving layer that let the data science team
expose their models as production HTTP APIs themselves. At AveeHealth I built
a new _Django_ panel for doctors and migrated users onto it without
disruption; designing its database models for data integrity was the hardest
problem in that project. The platform runs on *AWS*, on *EKS* and *ECS*, which
I operate. I also built an AI pipeline there that turns
doctor--patient sessions into structured clinical notes, where a wrong
decision has a real cost --- not unlike yours.

Some things stated rather than implied. I have used NATS, Kafka and RabbitMQ
rather than _SQS_. I have no identity-verification domain experience. And
most of my work at the largest scale was in *Go*, with Python for services
and pipelines around it; I am comfortable in both and would bring the same
reliability habits to your Python codebase.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
