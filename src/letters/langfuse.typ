// Cover letter — Langfuse (part of ClickHouse), Senior Cloud Infra Engineer,
// Europe incl. Spain.
//
// Build: just letter langfuse  →  build/parham-langfuse-cover-letter.pdf
//
// Written 2026-11-01. The role runs Langfuse Cloud on AWS ECS Fargate and
// ClickHouse Cloud with Datadog, and owns the public self-hosted Helm chart and
// Docker Compose setup. The letter leads on ECS at AveeHealth and the platform
// work at Snapp!, uses the nats-io record for the self-hosting and open-source
// angle, and the LiteLLM / Pydantic AI work to show he has been on the side of
// the LLM stack that Langfuse instruments — without claiming he used Langfuse.
//
// Gaps stated per the usual rule: Terraform and Helm are skills-only, Datadog
// and ClickHouse are not on the resume at all.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Langfuse, part of ClickHouse — Cloud Infrastructure",
  recipient-address: "Remote, Europe",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Cloud Infra Engineer — Langfuse",
)

Dear Langfuse Hiring Team,

You describe a role that runs Langfuse Cloud and, at the same time, makes sure
every self-hosted deployment runs just as well. I have spent the last six years
on exactly that boundary: running a platform myself, and building the pieces
that let other teams run it without me.

Today I run the platform at AveeHealth on *AWS*, operating managed *EKS*
clusters and *ECS* for containerized workloads. Before that, at Snapp!, Iran's
largest ride-hailing platform with more than 50 million users, I led the
design and implementation of the company-wide cloud platform and became lead
engineer for its architecture. Throughput is where I am most at home: I
designed the messaging architecture for a high-volume delivery application on
*NATS* at over 300k messages per second, ran _Kafka_ on Kubernetes through the
_Strimzi_ operator, and built a real-time stream-processing service for
pricing. I also implemented monitoring and alerting with *OpenTelemetry*, and
replaced a legacy cron estate with _Airflow_ so that jobs gained monitoring,
history and safe re-runs.

Self-hosting is the part of this role I would enjoy most. I have 20 merged
pull requests across eight `nats-io` repositories, including `nack`, a
JetStream Kubernetes controller, with its end-to-end tests --- so I know the
other side of it too: users running your software on infrastructure you have
never seen, and a maintainer who has to make that work. At Snapp! I wrote
*Kubernetes operators* in *Go* so that teams could declare what they needed
and stop waiting on us.

I have also been on the side of the stack that Langfuse instruments. I
deployed an _Ollama_ cluster behind _LiteLLM_ to route between local and
third-party models, and at AveeHealth I built a transcription pipeline with
_Deepgram_, RAG and _Pydantic AI_ that turns doctor--patient sessions into
structured clinical notes. Multi-step LLM work like that is hard to see into
without tracing, and that is the problem your traffic comes from.

Two things stated rather than implied. My infrastructure-as-code has been
operator- and GitOps-based rather than *Terraform*, and I have not maintained
a public *Helm* chart; I have not worked with *Datadog* or operated
*ClickHouse* either. These are things I would pick up rather than bring, and
having the ClickHouse team one channel away is part of what makes this role
attractive.

I live in Barcelona, Spain, and hold a Spanish residence permit valid to 2029.

Sincerely, \
Parham Alvani
