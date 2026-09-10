// Cover letter — Synadia, Technical Account Manager (EMEA remote).
//
// Build: just letter synadia  →  build/parham-synadia-cover-letter.pdf
//
// Letters reuse the spain profile so the name, accent colour, fonts, footer and
// ATS keyword injection match the resume exactly. The date is generated at
// compile time, so rebuilding before sending always stamps it correctly.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  // brilliant-cv has no `address` key in `personal.info` — it looks up an icon
  // per key and fails on one it does not know — so the postal address lives on
  // `location` in the profile and is repeated here, where a letter wants it.
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Synadia",
  recipient-address: "EMEA — Remote",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "Technical Account Manager",
)

Dear Synadia Hiring Team,

I have spent the last six years on both sides of NATS --- running it in
production at scale, and contributing to it upstream.

At Snapp!, Iran's largest ride-hailing platform with over 50 million users, I led
the design of the microservice architecture behind our high-volume delivery
product, with NATS carrying more than 300,000 messages per second. Beyond
building it, I became the person teams came to: I mentored engineering groups
across the company on messaging best practices, and built a unified client SDK
that raised Central Messaging Queue uptime by 5% --- a problem that turned out to
be about client behaviour and organisational habits as much as broker
configuration. That work is essentially the internal version of this role.

I have also contributed 20 merged pull requests across eight `nats-io`
repositories: the server itself, `jsm.go`, `natscli`, the documentation, the
JetStream Kubernetes controller `nack` --- including its kuttl-based end-to-end
tests --- and fourteen to the official Helm charts, covering MQTT configuration,
leafnode authorization, gateway settings, PVC provisioning and CI. Most recently
I opened a pull request against `nats-surveyor` adding opt-in JetStream
configuration and a Raft polling listener. Helping customers deploy and
health-check NATS on Kubernetes is, quite literally, what I have been doing in
public for years.

The customer-facing half of this role is where I am most at home. I lectured
Internet Engineering for seven semesters at Amirkabir University of Technology
and taught at Shahid Beheshti University, and I have presented _NATS as a message
broker_ at the Amirkabir Linux Festival twice, alongside talks on Go and Linux
virtualization. Explaining distributed systems to a skeptical technical audience
is something I have done repeatedly, not a skill I am claiming in the abstract.

The rest lines up: a Ph.D. in Computer Networks, more than ten years across Go
and Python, Kubernetes operators with custom resources running in production,
Kafka on Kubernetes via the Strimzi operator, and IoT architectures from my
research years --- a custom reliable Layer-2 protocol over raw NRF radios, and a
platform benchmarked at 1,000 concurrent devices.

I am based in Barcelona and authorized to work remotely, so an EMEA-remote role
suits me exactly.

I would welcome the chance to talk.

Sincerely, \
Parham Alvani
