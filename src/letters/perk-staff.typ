// Cover letter — Perk (formerly TravelPerk), Staff Software Engineer, Flights,
// Barcelona hybrid (3 office days).
//
// Build: just letter perk-staff  →  build/parham-perk-staff-cover-letter.pdf
//
// Written 2026-11-03. Flights has grown from one team to four since 2025; the
// Staff engineer sets technical direction across teams while staying mostly
// hands-on in one or two of them, owns problems end to end with product, and
// mentors. Stack is Python and AWS, roughly 80% backend / 20% frontend; they
// want domain complexity (flights, travel or fintech), "you build it, you run
// it", SLOs / incidents / post-mortems, and AI-augmented development. The
// letter leads on cross-team leadership at Snapp! (company-wide platform, the
// NATS delivery architecture, mentoring, the shared SDK), then end-to-end
// product ownership (AveeHealth doctors panel, Offerland on messy data), then
// Python on AWS.
//
// Gaps stated per the usual rule: no travel or flights domain, no Staff title
// held (Senior Cloud Engineer, progressing to lead engineer for platform
// architecture), SLOs and blameless post-mortems not on the resume, and
// agentic coding / AI code review not on the resume (building LLM systems is).

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Perk — Flights Engineering",
  recipient-address: "Barcelona, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Staff Software Engineer — Flights, Barcelona",
)

Dear Perk Hiring Team,

You say Flights knows where it wants to get to but not yet how, and wants the
people it hires to help work that out. That is the kind of problem I worked on at Snapp!,
Iran's largest ride-hailing platform with more than 50 million users. I led the
design and implementation of the company-wide cloud platform, progressing to
lead engineer for its architecture, and led the design of a microservice
architecture for a high-volume delivery application on *NATS*, handling more
than 300,000 messages per second. Alongside it I mentored engineering teams
on best practices for our messaging systems and wrote a unified client SDK
that raised the central queue's uptime by 5%.

I care about owning a problem from the customer to production. At AveeHealth I
led a new doctors panel in *Python* and *Vue*, from technical design to
containerized deployment, and moved its users off the old system without
disruption; the Django data models were the hardest problem in that project and
the one I solved. At Offerland I built a farm-appraisal platform that combines
messy, heterogeneous sources --- official sales records, soil data and
satellite imagery --- to predict per-farm prices, launched it across three
Canadian provinces, and gave product managers an admin console to review user
feedback and data health. Both run on *AWS*: managed *EKS* and *ECS* at
AveeHealth, *EC2* with *Lambda* at Offerland.

I have run what I built. At Snapp! I implemented monitoring and alerting with
_OpenTelemetry_, replaced legacy cron jobs with _Airflow_ for re-runnable data
processing, and wrote a real-time pricing service that balanced supply and
demand and raised accepted rides by 5%. A ride-hailing marketplace is not
flights, but it is customer-facing product on top of constrained, real-time
systems.

Some things stated rather than implied. I have not worked in travel or
flights, and I have not held a Staff title; my most senior role was lead
engineer for platform architecture. Defining SLOs and running blameless
post-mortems are not on my resume. And my AI work has been building LLM
systems --- a clinical-notes pipeline and a compliance agent --- rather than
agentic coding or AI-assisted code review.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship. I am ready to work from your Barcelona
office three days a week.

Sincerely, \
Parham Alvani
