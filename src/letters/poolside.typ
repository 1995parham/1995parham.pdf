// Cover letter — Poolside, Member of Engineering (Infrastructure), remote EMEA
// with three days in Paris each month.
//
// Build: just letter poolside  →  build/parham-poolside-cover-letter.pdf
//
// Written 2026-11-03. Second developer-experience engineer on the
// infrastructure team: build system, CI/CD and tooling for researchers and
// engineers, plus shared on-call. The spec is heavy on Bazel and Buildkite,
// neither of which he has. The letter leads on what does transfer — building
// the platform that ML researchers ship through (KServe / Knative pipelines,
// the FastAPI self-service serving layer, Airflow), Kubernetes on AWS (EKS,
// ECS) and self-hosted at Snapp!, Go backend services, the unified client SDK
// as internal developer tooling — and states the build-system gap first and
// plainly.
//
// Gaps stated per the usual rule: no Bazel, no Buildkite, Terraform is
// skills-only, no evidenced Python packaging / monorepo work, no evidenced
// IAM policy management.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Poolside — Infrastructure",
  recipient-address: "Remote, EMEA",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Member of Engineering — Infrastructure",
)

Dear Poolside Hiring Team,

I will start with the gap, because your posting leads with it: I have not
written _Bazel_ rules or run _Buildkite_. What I bring is the other half of the
role --- making it easy for researchers and engineers to ship, on
infrastructure I run myself.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I led the company-wide cloud platform on *Kubernetes* and progressed to
lead engineer for its architecture. For the data science team I built ML
pipelines on _KServe_ and _Knative_ and a *Python* / _FastAPI_ serving layer
that took their models from notebook to production as self-service, replaced
cron jobs with _Airflow_ for re-runnable periodic processing, and deployed an
_Ollama_ cluster behind _LiteLLM_. I wrote Kubernetes operators to automate
ArgoCD authentication and authorization, and a unified client SDK that raised
the uptime of our central messaging queue by 5%; tooling other engineers
depend on is the work I like most.

*Go* is my strongest language: backend services for real-time order processing,
a *NATS* architecture handling more than 300,000 messages per second, and an
on-device agent for a US security startup. I have run *Kubernetes* both
self-hosted at Snapp! and managed on *AWS* at AveeHealth, with _EKS_ and _ECS_,
and I implemented monitoring and alerting with _OpenTelemetry_.

Some things stated rather than implied. Beyond _Bazel_ and _Buildkite_, my
_Terraform_ is not backed by production work on my resume, I have not managed
IAM policies for a complex AWS estate, and I have not integrated Python
codebases into a monorepo build or owned Python packaging at that level. I
would be learning your build system from the person who owns it today.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship; Paris for three days a month is a short
trip from here.

Sincerely, \
Parham Alvani
