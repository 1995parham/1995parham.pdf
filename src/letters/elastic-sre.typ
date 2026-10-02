// Cover letter — Elastic, Senior Site Reliability Engineer, Platform
// Reliability (Resilience), Spain remote.
//
// Build: just letter elastic-sre  →  build/parham-elastic-sre-cover-letter.pdf
//
// Written 2026-10-02. A second application to Elastic: the first, Software
// Engineer II — Platform Infrastructure (Orchestration), was rejected on
// 2026-09-17, the day after it was sent. Three reasons this is not a
// re-tread rather than a re-send:
//
//  1. Different requisition, different department, and a level up. That one
//     was an SE II; this is Senior SRE inside Platform Engineering.
//  2. Elastic carries over twenty open Spain requisitions. A company hiring
//     at that volume does not treat one team's no as a company-wide no.
//  3. The first letter is the one `shared/professional.typ` names in its
//     header comment as having overreached — it claimed more observability
//     practice than the resume evidences. This one claims exactly the one
//     OpenTelemetry bullet and nothing beyond it.
//
// Do not mention the earlier rejection. Fever's rejection explicitly invited
// other applications and so could be referenced; Elastic's did not.
//
// Gap disclosed per the usual rule: their bonus list names Crossplane or
// Terraform. Operators and Helm are the honest answer and are named as such.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Elastic",
  recipient-address: "Spain — remote",
  // Literal em dash: `subject` is a plain string, not markup, so Typst's
  // `---` to em-dash substitution does not apply here.
  subject: "Senior Site Reliability Engineer — Platform Reliability (Resilience)",
)

Dear Elastic Platform Engineering Team,

You describe the SRE team as taking an engineering approach to reliability ---
writing software, tooling and automation so the rest of the infrastructure can
move quickly. That is the distinction I would make about my own record too. I
have not administered platforms; I have built them.

The clearest example is small and specific. At Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, authorisation on our
_ArgoCD_ deployments was a manual step that did not scale with the number of
teams onboarding. Rather than document the process better, I engineered
*Kubernetes operators* --- custom resources and the controllers behind them,
written in *Go* --- so that authentication and authorization configured
themselves from declared state. That is the same instinct your posting
describes: automate the system engineering rather than staff it. My work in
this area is public as well as internal: 20 merged pull requests across eight
`nats-io` repositories, including `nack`, a JetStream Kubernetes controller,
with its kuttl-based end-to-end tests.

On the scale and multi-cloud side. I led the design and implementation of a
*company-wide cloud platform* at Snapp!, growing into the lead engineer for its
architecture, running *Kubernetes* in production for engineering teams across
the business --- Kafka through the _Strimzi_ operator, _RabbitMQ_ and _Redis_
through theirs, _KServe_ and _Knative_ for ML pipelines, and _Airflow_
replacing a legacy cron estate so periodic processing had real monitoring and
safe re-runs. I currently run the *AWS* estate at AveeHealth on managed _EKS_
and _ECS_, so managed Kubernetes in a public cloud is current rather than
historical for me.

On resilience specifically, and in your "progress not perfection" spirit, one
incident is worth more than a list. A service of ours was serving almost no
traffic while Prometheus node exporter showed its interface pinned at its
throughput cap. Nothing had alerted, because nothing was failing --- the only
signal was two numbers that should have agreed and did not. Capturing on the
interface showed a sustained stream of inbound connection attempts from outside,
reaching our virtual machine through a MAC address and layer-2 routing fault on
our segment. I hold a Ph.D. in Computer Networks, and that is the kind of
problem it earns its keep on. I also implemented monitoring and alerting for
real-time application observability using *OpenTelemetry*, and I would be
joining a company whose products I would otherwise be reaching for.

I am happy to carry a pager. Follow-the-sun is the humane version of on-call
and I would rather be in a rotation designed that way than in one that is not.

One thing stated rather than implied: your bonus list names *Crossplane or
Terraform*, and my infrastructure-as-code has been *operator- and Helm-based*
instead. The declarative, reconcile-to-desired-state model is the same one I
work in daily, but the specific tooling I would be picking up rather than
bringing.

I live in Barcelona and hold a Spanish residence permit valid to 2029, so no
sponsorship is required.

Sincerely, \
Parham Alvani
