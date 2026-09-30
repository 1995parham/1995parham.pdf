// Cover letter — Okta, Senior Site Reliability Engineer (Auth0), Barcelona.
//
// Build: just letter okta  →  build/parham-okta-cover-letter.pdf
//
// Why this one gets a letter: the requisition asks for custom software in Go
// that makes a platform reliable by design, Kubernetes, and GitOps with ArgoCD
// named explicitly. The Snapp! bullet about Kubernetes operators automating
// ArgoCD *authentication and authorization* answers all three at once — and it
// is identity work, which is Auth0's entire product. That coincidence is the
// hook and the letter leads on it.
//
// Honesty constraint, per the note at the top of shared/professional.typ:
// Terraform, Prometheus and Grafana appear in skills.typ ONLY and are not
// backed by any bullet. The req asks for Terraform. This letter therefore does
// NOT claim Terraform experience. The Prometheus node-exporter incident below
// is real — Parham described it on 2026-09-29 — but it is verbal evidence, so
// it is told as a story rather than asserted as a resume credential.
//
// Found via LinkedIn, verified on Okta's Greenhouse board (id 7418982).
// Published band: EUR 64,000–88,000. Posted 2026-09-29 with 32 applicants.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Okta — Auth0",
  recipient-address: "Barcelona, Spain",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "Senior Site Reliability Engineer (Auth0)",
)

Dear Auth0 SRE Team,

The posting asks for someone who writes custom software in Go to make a
platform reliable by design, who knows Kubernetes and GitOps with _ArgoCD_, and
who can reason about identity at scale. One project answers all three at once.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I engineered _Kubernetes_ operators --- custom resource definitions and
their controllers, in Go --- to automate _ArgoCD_ authentication and
authorization across the delivery teams. Access to deployment tooling had been
granted by hand, which is slow when it works and dangerous when it does not.
Encoding it as a controller turned authorization into declarative state,
reconciled continuously rather than remembered. That is the shape of work this
role describes: not scripts, but applications that remove a class of failure
instead of responding to instances of it.

That sat inside a company-wide cloud platform I led the design, implementation
and eventually the architecture of. On it I ran Kafka through the _Strimzi_
operator and _RabbitMQ_ and _Redis_ through theirs, designed the microservice
architecture behind our delivery product with _NATS_ carrying over 300,000
messages per second, and raised Central Messaging Queue uptime by 5% with a
unified client SDK --- a reliability problem that lived in client behaviour
rather than broker configuration. Sharding the chat-message _MongoDB_ cluster
halved response time; migrating legacy PHP services raised availability by 20%.

On observability, one incident says more than a list. A service of ours was
handling almost no requests, yet Prometheus node exporter showed its network
interface pinned at its throughput cap. Nothing had alerted, because nothing
was failing --- the signal was two numbers that should have agreed and did not.
Capturing on the interface showed a sustained stream of inbound connection
attempts from an external source, reaching our virtual machine through a MAC
address and layer-2 routing fault on our segment. The traffic was never ours. I
hold a Ph.D. in Computer Networks, and that is where it earns its keep. I also
implemented monitoring and alerting for real-time observability with
_OpenTelemetry_ on the same platform.

I run the AWS estate at AveeHealth on managed _EKS_ and _ECS_. My Go is also
public: 20 merged pull requests across eight `nats-io` repositories, including
the server, the JetStream Kubernetes controller `nack` with its kuttl-based
end-to-end tests, and fourteen to the official Helm charts --- writing a
controller other people operate teaches you what "reliable by design" has to
mean. One straight answer on the requisition: my infrastructure-as-code work
has been operator- and Helm-based rather than _Terraform_, so I would be
picking that up rather than bringing it.

I live in Barcelona and hold a Spanish residence permit, so no sponsorship is
required. I would welcome the chance to talk.

Sincerely, \
Parham Alvani
