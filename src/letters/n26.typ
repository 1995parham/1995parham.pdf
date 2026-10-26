// Cover letter — N26, Senior Site Reliability Engineer - Infrastructure,
// Platform Engineering / Scalability team, Berlin or Barcelona hybrid.
//
// Build: just letter n26  →  build/parham-n26-cover-letter.pdf
//
// Written 2026-10-26. The Scalability team owns container orchestration, so
// the letter opens on the ArgoCD operators rather than on scale: that bullet
// is the closest thing on the resume to the team's actual remit.
//
// Their requirement list maps almost line for line: Kubernetes clusters in
// production (Snapp! platform, EKS at AveeHealth), AWS (EKS and ECS), Go
// (operators, Shared Services, nats-io PRs), Argo CD, monitoring and incident
// work. Two items are not evidenced by any bullet and are stated as gaps per
// the usual rule: Terraform (skills-only) and a service mesh such as Istio
// (nowhere on the resume).
//
// The closing line deliberately omits "no sponsorship is required". N26 hires
// in Barcelona on a Spanish contract, which the current residence permit does
// not straightforwardly cover; the form asks the immigration question directly
// and that answer is Parham's to give.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "N26 — Platform Engineering, Scalability",
  recipient-address: "Barcelona",
  // Literal em dash: `subject` is a plain string, not markup, so Typst's
  // `---` to em-dash substitution does not apply here.
  subject: "Senior Site Reliability Engineer — Infrastructure",
)

Dear N26 Platform Engineering Team,

Your posting describes the Scalability team as the people who build container
orchestration as a self-service product for the rest of the bank. That is the
job I have been doing for the last five years, and the part of it I am proudest
of is exactly the self-service part.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I led the design and implementation of the company-wide cloud platform
and grew into the lead engineer for its architecture. One problem shows how I
approach that work. Authorisation on our _Argo CD_ deployments was a manual
step that did not scale with the number of teams onboarding, so instead of
documenting the process better I wrote *Kubernetes operators* in *Go* ---
custom resources and the controllers behind them --- so that authentication and
authorisation configured themselves from declared state. Product teams stopped
waiting on us, which is the point of a platform. The same work is public:
20 merged pull requests across eight `nats-io` repositories, including `nack`,
a JetStream Kubernetes controller.

On that platform I ran stateful and messaging workloads for teams across the
business --- Kafka through the _Strimzi_ operator, _RabbitMQ_ and _Redis_
through theirs, and _KServe_ with _Knative_ for ML serving. Today I run the
*AWS* estate at AveeHealth on managed *EKS* and *ECS*, so production Kubernetes
in AWS is current work for me rather than history. Go has been my main
language since I wrote real-time order-processing and delivery-tracking
services in it at Snapp!.

On monitoring and incidents, I implemented monitoring and alerting for
real-time observability with *OpenTelemetry*, and one incident says more than a
list. A service was serving almost no traffic while the node exporter showed
its interface pinned at its throughput cap. Nothing had alerted, because
nothing was failing; the only signal was two numbers that should have agreed
and did not. Capturing on the interface showed a stream of inbound connection
attempts reaching the machine through a MAC-address and layer-2 routing fault
on our segment. I hold a Ph.D. in Computer Networks, and that is the kind of
problem it pays for.

Two things stated rather than implied. My infrastructure-as-code has been
*operator- and Helm-based* rather than *Terraform*, and I have not run a
*service mesh* such as Istio in production. The reconcile-to-desired-state
model is the one I work in daily, and my networking background is deep, but
those two tools I would be picking up rather than bringing.

I live in Barcelona and hold a Spanish residence permit valid to 2029, and the
hybrid rhythm you describe suits me well.

Sincerely, \
Parham Alvani
