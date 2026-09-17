// Cover letter — Grafana Labs, Senior Solutions Engineer (Spain, remote).
//
// Build: just letter grafana  →  build/parham-grafana-cover-letter.pdf
//
// Two deliberate choices. First, the letter leads with the Nobitex
// observability work rather than the Snapp! NATS story: this is the one
// application where "I already run your product in production" beats scale.
// That required adding the Nobitex entry to professional.typ — before it, the
// only Grafana claim in the whole resume lived in skills.typ with no bullet
// behind it, and claiming it to Grafana Labs of all companies would not have
// survived a first interview.
//
// Second, it states the pre-sales gap outright. The posting asks for 5+ years
// and the resume evidences none, so the alternative was implying otherwise in
// writing to the people who would check.
//
// The Nobitex paragraph names tooling but no topology counts, for the reason
// given in professional.typ: this repository is public and an exchange is a
// target.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Grafana Labs",
  recipient-address: "Spain --- Remote",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  // Literal em dash: `subject` is a plain string, not markup, so Typst's `---`
  // to em-dash substitution does not apply here.
  subject: "Senior Solutions Engineer — Spain",
)

Dear Grafana Labs Hiring Team,

I run a Prometheus and Grafana platform in production. I am already your user
rather than someone who has read the documentation.

At Nobitex, Iran's largest cryptocurrency exchange with more than ten million
users, I operate the company-wide observability platform: Prometheus-format
metrics from every team aggregated centrally into Grafana, per-team dashboard
folders behind Keycloak single sign-on, VictoriaMetrics alerting rules routed by
severity and owner to on-call paging, and a runbook behind every alert that
pages someone. Underneath sits a multi-cluster Kubernetes estate across several
datacenters, reconciled by one ArgoCD from a single repository, with a
Kafka-to-Vector pipeline fanning logs out to Loki, OpenSearch and syslog. When a
customer tells you their consumer-lag alert is firing on the wrong cluster, I
have had that exact morning.

Let me be straightforward about the gap. I have not held a pre-sales title, and
the posting asks for five years of one. What I do have is the half of the role
that cannot be picked up quickly. I lectured Internet Engineering at Amirkabir
University of Technology for seven semesters while working full-time in
industry, taught at Shahid Beheshti University, and presented _NATS as a message
broker_ at the Amirkabir Linux Festival twice, alongside talks on Go and Linux
virtualization. At Snapp!, Iran's largest ride-hailing platform, I was the
person teams came to on messaging: I mentored engineering groups across the
company and built a unified client SDK that raised Central Messaging Queue
uptime by 5% --- a problem that turned out to be about client behaviour as much
as broker configuration. I also built a FastAPI serving layer that let the
data-science team ship from a notebook to production without going through me,
which is the same instinct the job asks for: work out what someone actually
needs, then take yourself out of the path.

The rest lines up. A Ph.D. in Computer Networks, more than ten years across Go
and Python, a microservice architecture I led the design of carrying over
300,000 NATS messages per second, Kafka on Kubernetes via the Strimzi operator,
and 20 merged pull requests across eight `nats-io` repositories --- the server
itself, the JetStream Kubernetes controller, and fourteen to the official Helm
charts.

I am based in Barcelona, which this role requires.

I would welcome the chance to talk.

Sincerely, \
Parham Alvani
