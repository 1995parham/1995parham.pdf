// Cover letter — JOIN, Senior Backend Engineer (Barcelona, hybrid).
//
// Build: just letter join  →  build/parham-join-cover-letter.pdf
//
// Found 2026-10-01, four minutes after posting, at zero applicants. EUR
// 70,000–85,000 published. That timing is the whole reason this letter was
// written quickly rather than carefully polished — the window closes in hours.
//
// Why a letter at all for an Easy Apply role: their requirement list ends on
// "Experience with message brokers (SNS, RabbitMQ, Kafka, Google Pub/Sub,
// etc.)", which is the single strongest thing on this resume and the thing a
// CV bullet undersells. The letter leads there and gets out of the way.
//
// Note their exact phrasing on typing: "2+ years of experience with a
// strongly typed language OR TypeScript". Go satisfies that on its face, so
// there is no gap to disclose here — unlike the TypeScript-only framing at
// The Agile Monkeys. Do not invent one.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "JOIN",
  recipient-address: "Barcelona, Spain",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "Senior Backend Engineer",
)

Dear JOIN Engineering Team,

Your requirement list ends on message brokers. That is where I would start,
because it is the part of my record that a CV bullet undersells.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I led the design of the microservice architecture behind our
high-volume delivery product, with _NATS_ carrying over *300,000 messages per
second*. I ran Kafka on Kubernetes through the _Strimzi_ operator, and
_RabbitMQ_ and _Redis_ through theirs. I raised Central Messaging Queue uptime
by 5% by building a unified client SDK --- a problem that turned out to live in
client behaviour and team habits rather than in broker configuration, which is
usually where these problems actually live. I then spent a good part of two
years mentoring engineering teams across the company on using NATS and other
messaging systems well. My work on this is also public: 20 merged pull requests
across eight `nats-io` repositories, including the server itself and the
JetStream Kubernetes controller `nack` with its kuttl-based end-to-end tests.

On the rest of your list: more than ten years of backend development, and
*Go* as my primary language for seven of them, which answers the strongly
typed requirement directly. Relational databases both ways --- raw _PostgreSQL_
schema design and optimisation at Snapp!, and the Django ORM models at
AveeHealth, where the clinical data model was the hardest problem on the
project. I sharded the chat-message _MongoDB_ cluster to halve response time,
and migrated legacy PHP services onto a modern platform for a 20% availability
gain. Testing is not a separate activity for me: I built the automated testing
frameworks and CI/CD pipelines at Snapp! and mentored junior engineers on
backend practice, and I lectured Internet Engineering at Amirkabir University
of Technology for seven semesters while working full time, which tends to cure
people of writing code only they can read.

From your bonus list I bring _GraphQL_, built for an IoT platform so users
could filter crop data flexibly, and _AWS_, where I currently run the
AveeHealth estate on managed _EKS_ and _ECS_.

What draws me to this specifically is the problem domain. You are building
hiring infrastructure that handles millions of candidate interactions, and I
have spent the last month on the other side of that surface, as a candidate,
noticing exactly how much friction a good or bad implementation creates. That
is an unusual source of product intuition and I would not waste it.

I live in Barcelona and hold a Spanish residence permit, so no sponsorship is
required and a hybrid role here is what I want rather than something I would be
accommodating.

I would welcome the chance to talk.

Sincerely, \
Parham Alvani
