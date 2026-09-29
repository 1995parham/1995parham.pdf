// Cover letter — Thunes, GO Senior Software Engineer (Barcelona, hybrid).
//
// Build: just letter thunes  →  build/parham-thunes-cover-letter.pdf
//
// The easiest letter in the set to write: they want Golang plus event-driven
// architecture over Kafka, RabbitMQ or SNS/SQS, in Barcelona. That is the exact
// centre of Parham's record, and he already lives in the city, so there is no
// relocation or permit argument to make. Lead on the messaging numbers and get
// out of the way.
//
// Found through the Greenhouse public API (boards-api.greenhouse.io) rather
// than the careers page, which is an iframe embed — see job-boards.md.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Thunes",
  recipient-address: "Barcelona, Spain",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "GO Senior Software Engineer",
)

Dear Thunes Engineering Team,

Go and event-driven architecture over message brokers is not a part of my
background --- it is the centre of it. And I already live in Barcelona.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million users,
I led the design of the microservice architecture behind our high-volume
delivery product, with _NATS_ carrying over 300,000 messages per second. I ran
Kafka on Kubernetes through the _Strimzi_ operator and _RabbitMQ_ and _Redis_
through theirs, and raised Central Messaging Queue uptime by 5% by building a
unified client SDK --- a problem that turned out to be about client behaviour
and team habits as much as broker configuration. Before that, on the Shared
Services team, I built real-time stream processing that adjusted pricing against
live demand and supply and lifted accepted rides by 5%, and maintained the
Golang services behind order processing and delivery tracking.

Payments are unforgiving about correctness in a way that most systems are not,
and the habits that matter there are ones I have had to learn the hard way at
consumer scale: idempotency, exactly-once semantics that are honest about being
at-least-once plus deduplication, and backpressure that degrades rather than
collapses. Sharding the chat-message _MongoDB_ cluster to halve response time
and migrating legacy PHP services onto a modern platform for a 20% availability
gain were both exercises in changing a live system without dropping anything.

My Go is also public: 20 merged pull requests across eight `nats-io`
repositories, including the server itself, the JetStream Kubernetes controller
`nack` with its kuttl-based end-to-end tests, and fourteen to the official Helm
charts. Code review, tests and documentation are how I work rather than
ceremony I tolerate --- I lectured Internet Engineering at Amirkabir University
of Technology for seven semesters while working full time, which does tend to
cure people of writing code only they can read.

On the API side: a Python and _FastAPI_ serving layer that put the data science
team's models into production themselves, a _GraphQL_ API for an IoT platform,
and a Ph.D. in Computer Networks behind all of it.

I hold a Spanish residence permit, so no sponsorship is required, and a hybrid
Barcelona role is exactly what I am looking for rather than something I would be
accommodating.

I would welcome the chance to talk.

Sincerely, \
Parham Alvani
