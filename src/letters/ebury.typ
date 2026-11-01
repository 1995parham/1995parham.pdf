// Cover letter — Ebury, Senior Platform Engineer (Go / Python / TypeScript),
// Madrid, hybrid 4 days in the office.
//
// Build: just letter ebury  →  build/parham-ebury-cover-letter.pdf
//
// Written 2026-11-02. The Platform team owns the AWS platform, the Terraform
// module library, the ArgoCD / GitHub Actions deploy path, Go and Python
// controllers and tooling, and wants to turn the platform into an AI-assisted
// SDLC platform. The letter leads on the Argo CD operators and the Snapp!
// platform, then the Ollama / LiteLLM work for the AI-assisted SDLC line.
//
// Gaps stated per the usual rule: Terraform (skills-only, and it is a
// requirement here), Datadog (not on the resume), TypeScript (not on the
// resume). The Madrid move is stated plainly: he lives in Barcelona and is
// open to relocating within Spain.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Ebury — Platform Engineering",
  recipient-address: "Madrid, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Platform Engineer — Go / Python",
)

Dear Ebury Hiring Team,

You describe a Platform team whose work every other engineer at Ebury builds
and ships on, and a role that writes production code, owns infrastructure and
designs the abstractions other engineers use every day. That is the job I did
at Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, where I led the design and implementation of the company-wide cloud
platform and became lead engineer for its architecture.

The closest piece of that work to your deploy path is _Argo CD_. Access to our
deployments was a manual step that did not scale with the number of teams, so
I wrote *Kubernetes operators* in *Go* that configured its authentication and
authorisation from declared state. I also built a *Python* / *FastAPI* serving
layer that let the data science team deploy their models from notebook to
platform without us, and ran stateful systems on Kubernetes through their
operators: _Kafka_ with _Strimzi_, _RabbitMQ_ and _Redis_. Underneath that sat
a messaging architecture on *NATS* at over 300k messages per second, and
monitoring and alerting with *OpenTelemetry*. Today I run the platform at
AveeHealth on *AWS*, operating managed *EKS* clusters and *ECS*.

Your plan to grow the platform into an AI-assisted SDLC platform is the part I
would most like to work on. At Snapp! I deployed an _Ollama_ cluster for local
models and put _LiteLLM_ in front of it to route between local and third-party
providers --- the same shape of problem as giving product engineers frontier
and open-source models behind one platform. I use AI-assisted development
tools daily, and treat their output the way I would a colleague's pull
request. Open source matters to me as well: I have 20 merged pull requests
across eight `nats-io` repositories, including `nack`, a JetStream Kubernetes
controller.

Three things stated rather than implied. My infrastructure-as-code has been
operator-, Helm- and GitOps-based rather than *Terraform*, which you list as a
requirement; I have not used *Datadog*; and I have not written production
*TypeScript*. I would pick these up rather than bring them, and I would rather
you knew that now.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship. I am open to relocating to Madrid for
the four office days.

Sincerely, \
Parham Alvani
