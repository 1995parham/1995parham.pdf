// Cover letter — Elastic, Software Engineer II, Platform Infrastructure
// (Orchestration).
//
// Build: just letter elastic  →  build/parham-elastic-cover-letter.pdf
//
// Written without the full job description: the angle assumes "orchestration"
// means the Elastic Cloud control plane and ECK, i.e. running Elasticsearch as
// a managed, stateful workload on Kubernetes. Re-check that framing against the
// posting before sending.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Barcelona, Spain",
  recipient-name: "Elastic",
  recipient-address: "EMEA — Remote",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  // Literal em dash: `subject` is a plain string, not markup, so Typst's `---`
  // to em-dash substitution does not apply here.
  subject: "Software Engineer II — Platform Infrastructure (Orchestration)",
)

Dear Elastic Hiring Team,

Running stateful distributed systems on Kubernetes --- the ones where a careless
rolling upgrade costs you quorum or data --- is what I have spent the last five
years doing.

At Snapp!, Iran's largest ride-hailing platform with over 50 million users, I led
the design and implementation of the company-wide cloud platform and became lead
engineer for its architecture. I engineered Kubernetes operators with custom
resources to automate ArgoCD authentication and authorization, so onboarding a
team no longer meant hand-writing RBAC. I ran Kafka on Kubernetes through the
Strimzi operator, which is the closest analogue I have to orchestrating
Elasticsearch: persistent volumes, broker identity, quorum-aware restarts, and
upgrades that cannot simply be rolled. I also implemented KServe and Knative for
model serving, cutting resource consumption while improving data gathering by
10%, and built a self-service path that let the data-science team deploy from a
notebook to production without going through me.

That operator work continues in the open. Of my 20 merged pull requests across
eight `nats-io` repositories, two are to `nack` --- the JetStream Kubernetes
controller --- including its kuttl-based end-to-end test suite, and fourteen are
to the official Helm charts, covering PVC provisioning, leafnode authorization
and gateway configuration. One is to the `nats-server` itself. That is
substantially the same problem your orchestration layer solves, approached from
the community side. I have also had a small change merged into
`elastic/apm-agent-go`.

Underneath all of it: Go and Python for over ten years, a Ph.D. in Computer
Networks, and observability tooling --- Prometheus, Grafana, OpenTelemetry,
Jaeger --- that I have run rather than merely configured.

I am based in Barcelona and authorized to work remotely, so an EMEA-remote role
fits well.

I would welcome the chance to talk.

Sincerely, \
Parham Alvani
