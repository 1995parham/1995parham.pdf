// Cover letter — Cabify, Senior Site Reliability Engineer (Madrid, strong remote culture).
//
// Build: just letter cabify  →  build/parham-cabify-cover-letter.pdf
//
// The lead here is deliberate and different from the other letters: Cabify is a
// ride-hailing platform and Parham spent seven years at one. Alan rejected him
// on 2026-09-29 for not showing domain familiarity, so this letter opens with
// the domain and lets the infrastructure follow, which is the reverse of the
// usual order. See ~/org/Companies/Alan/Alan.md for why.
//
// Two things the posting does not tell you, both found on the form itself:
// Cabify is a SPANISH employer, so the Ley 14/2013 permit question in
// ~/org/Spain/ applies here in a way it does not to the foreign-employer
// applications; and a required question states the role is FULLY ON-SITE in
// Madrid, despite the "strong remote culture" line in the advert. Do not send
// this letter assuming a remote arrangement.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Cabify",
  recipient-address: "Madrid, Spain",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "Senior Site Reliability Engineer",
)

Dear Cabify Engineering Team,

I spent seven years building the platform underneath a ride-hailing company. I
know what a surge looks like on a dashboard, why the interesting incidents
happen at the boundary between the matching service and everything else, and how
quickly a small latency regression becomes a driver-supply problem.

That was Snapp!, Iran's largest ride-hailing platform, with more than 50 million
users. I joined the Shared Services team in 2019 and left as lead engineer for
platform architecture. The work maps closely onto what you describe:

- *Self-service infrastructure.* I built the abstractions that let other teams
  ship without opening a ticket --- a Python and _FastAPI_ serving layer that put
  the data science team's models into production as HTTP APIs themselves, and
  Kubernetes operators with custom resources that automated ArgoCD
  authentication and authorization so access stopped being a request queue.
- *Scale and messaging.* I led the design of the microservice architecture
  behind our high-volume delivery product, with _NATS_ carrying over 300,000
  messages per second, ran Kafka on Kubernetes through the Strimzi operator, and
  raised Central Messaging Queue uptime by 5% with a unified client SDK --- a
  problem that turned out to be about client behaviour as much as broker
  configuration.
- *Observability and latency.* I implemented monitoring and alerting with
  _OpenTelemetry_, sharded the chat-message MongoDB cluster to cut response time
  by half, and earlier built the real-time stream processing that adjusted
  pricing against demand and supply, which lifted accepted rides by 5%.
- *Reliability as a habit.* I replaced legacy cron jobs with Airflow so periodic
  work became observable and re-runnable, and migrated critical PHP services to
  a modern platform, raising availability by 20%.

On your list specifically: Unix and the networking stack are where I am most at
home --- I hold a Ph.D. in Computer Networks and once built a reliable Layer-2
transport protocol over raw radio modules because nothing off the shelf was
good enough. Go is my primary language, with 20 merged pull requests across
eight `nats-io` repositories including the server itself, and Python close
behind. Automating myself out of toil is a reflex; the second time I do
something by hand I write the tool.

Increasing reliability awareness across other teams is also familiar. I mentored
engineering groups across Snapp! on messaging practice, and lectured Internet
Engineering for seven semesters at Amirkabir University of Technology alongside
the day job.

I live in Barcelona and hold a Spanish residence permit, so no sponsorship is
needed. I understand the role is based on-site in Madrid and am glad to discuss
what that would look like.

I would welcome the chance to talk.

Sincerely, \
Parham Alvani
