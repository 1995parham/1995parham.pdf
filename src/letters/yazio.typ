// Cover letter — Yazio, Senior Platform Engineer (100% remote, Barcelona listed).
//
// Build: just letter yazio  →  build/parham-yazio-cover-letter.pdf
//
// Why this one is worth a letter: Yazio run Amazon EKS on one side and an
// on-prem private cloud via Rancher on the other, and they ask explicitly for
// someone who has run Kubernetes *without* a managed service underneath. Parham
// has both halves — EKS at AveeHealth, the self-hosted company-wide platform at
// Snapp! — which almost no single candidate does. The letter leads on that
// split rather than on scale.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Yazio",
  recipient-address: "Barcelona — Remote",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "Senior Platform Engineer",
)

Dear Yazio Platform Team,

Your setup is two Kubernetes environments --- Amazon EKS on one side, your own
on-prem private cloud on the other --- and you want someone who has run clusters
without a managed service underneath. I have spent the last six years doing both
halves of that, and they are rarely found in the same person.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million users,
I led the design and implementation of a company-wide cloud platform and became
its lead engineer for platform architecture. That platform was self-hosted: no
EKS, no GKE, nobody else owning the control plane. I engineered Kubernetes
operators with custom resources to automate ArgoCD authentication and
authorization, deployed and managed Kafka through the Strimzi operator, ran
RabbitMQ and Redis through theirs, implemented monitoring and alerting with
_OpenTelemetry_, and replaced a sprawl of legacy cron jobs with Airflow so that
periodic work became observable and re-runnable instead of mysterious. On the
managed side, at AveeHealth I have been running the platform on AWS, operating
EKS clusters and ECS for containerized workloads.

The line in your posting I recognised most was designing the abstractions that
let Backend and Data Engineers ship without opening a ticket. I built exactly
that: a Python and _FastAPI_ serving layer that exposed the data science team's
models as production HTTP APIs, so they could go from notebook to platform
themselves rather than queueing behind me. I also implemented _KServe_ and
_Knative_ to build their ML pipelines, which cut resource consumption and lifted
data gathering by 10%, and deployed an Ollama cluster with LiteLLM in front to
balance local and third-party inference. Treating the platform as an internal
product with engineers as its users is how I have worked for years, not a
framing I am adopting for this letter.

On the rest of your list: Go is where most of my work lives, and I have 20
merged pull requests across eight `nats-io` repositories --- the server itself,
the JetStream Kubernetes controller `nack`, and fourteen to the official Helm
charts. Debugging a cluster rather than the workload on it is familiar; so is
the database and networking reasoning you describe, from sharding a chat-message
MongoDB cluster to halve response time to a Ph.D. in Computer Networks and a
custom reliable Layer-2 protocol built over raw radio modules during my research
years. Small team, shifting priorities and no handed-down spec describes most of
my career accurately.

I live in Barcelona and hold a Spanish residence permit, so no sponsorship is
required.

I would welcome the chance to talk.

Sincerely, \
Parham Alvani
