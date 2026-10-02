// Cover letter — Fever, SRE / DevOps Engineer (remote, Spain).
//
// Build: just letter fever  →  build/parham-fever-cover-letter.pdf
//
// Written 2026-10-02, the day after Fever rejected the generic Senior
// Software Engineer application at CV screen. Their rejection explicitly
// invited other applications: "this decision is only about this particular
// position — your background might be a better fit for other opportunities
// across Fever". This is that other opportunity.
//
// Two mistakes from the first attempt, both fixed here:
//  1. The wrong role. Their board carries 27 Spain engineering openings and
//     the least specific one was chosen. Note also that the Senior
//     Infrastructure & Cloud Engineer role, briefly considered, is Madrid-
//     based with frequent travel to France and a French-language question —
//     a location trap of the Cabify kind. This SRE role is explicitly
//     "home office friendly anywhere in Spain".
//  2. No letter. The cover-letter slot went out empty last time at a company
//     that screens in a day.
//
// Honesty constraints per shared/professional.typ: their "Infrastructure as
// Code" ask is generic rather than Terraform-specific, so Helm and operators
// answer it legitimately — but ELK/EFK centralised logging is a named
// nice-to-have with nothing behind it, and that is disclosed.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Fever",
  recipient-address: "Spain — remote",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "SRE / DevOps Engineer",
)

Dear Fever Engineering Team,

You ask for Kubernetes in production, AWS, Linux automation in Python and
bash, and a real understanding of networking and reverse proxies. The last of
those is the one most candidates treat as a footnote, so let me start there.

I hold a Ph.D. in Computer Networks, and it has earned its keep operationally
rather than academically. At Snapp!, Iran's largest ride-hailing platform with
more than 50 million users, a service of ours was handling almost no requests
while Prometheus node exporter showed its network interface pinned at its
throughput cap. Nothing had alerted, because nothing was failing --- the signal
was two numbers that should have agreed and did not. Capturing on the
interface showed a sustained stream of inbound connection attempts from an
external source, reaching our virtual machine through a MAC address and
layer-2 routing fault on our segment. The traffic was never ours. Earlier, at
Avidnet, I built a reliable layer-2 transport protocol over raw NRF radio
modules, and configured HPE ProLiant servers on VMware ESXi. Networking is not
a box I tick.

On the rest of your must-have list. I led the design, implementation and
eventually the architecture of a *company-wide cloud platform* at Snapp!,
running *Kubernetes* in production for engineering teams across the business
--- Kafka through the _Strimzi_ operator, _RabbitMQ_ and _Redis_ through
theirs, and Kubernetes operators I wrote in Go to automate _ArgoCD_
authentication and authorization. I currently run the *AWS* estate at
AveeHealth on managed _EKS_ and _ECS_. Automation in *Python* and *bash* is
daily work: I replaced legacy cron jobs with _Airflow_ for periodic
processing, with proper monitoring and safe re-runs, and built a Python and
_FastAPI_ serving layer so the data science team could deploy their own models
without waiting on the platform team. I built the CI/CD pipelines and
automated testing frameworks there too.

From your nice-to-have list: *PostgreSQL* and MongoDB schema design and
optimisation, including sharding the chat-message cluster to halve response
time; service infrastructure for *Python* environments; and a security-first
habit that comes from having been the person who found the intrusion above.

Two things stated rather than implied. My infrastructure-as-code has been
*operator- and Helm-based rather than Terraform* --- which answers your
requirement as written, but you should know the shape of it. And my
centralised logging and observability practice is built on *OpenTelemetry
rather than ELK or EFK*, so that specific stack I would be learning.

I live in Barcelona and hold a Spanish residence permit valid to 2029, so no
sponsorship is required and "home office friendly anywhere in Spain" suits me
exactly.

I applied for a more general engineering role here last week and your team
kindly suggested my background might suit something else at Fever. I think
this is it.

Sincerely, \
Parham Alvani
