// Cover letter — Trading 212, Senior Backend Engineer, remote Spain.
//
// Build: just letter trading212  →  build/parham-trading212-cover-letter.pdf
//
// Written 2026-11-11. A general senior backend hire matched to a team later.
// Java 21 / Spring is the core; the posting says Go and Node.js candidates
// with strong production experience are "also encouraged to apply". Stack:
// PostgreSQL, MariaDB, Redis, Kafka, ClickHouse, Elasticsearch, AWS,
// Kubernetes. Asks for HTTP / WebSockets / AMQP judgement, deep relational
// database knowledge, and high-availability design.
//
// The letter leads on Go in production at Snapp! (real-time order processing,
// the pricing stream service, the NATS architecture at 300k msg/s) and on
// running Kafka, RabbitMQ and Redis on Kubernetes.
//
// Gaps stated per the usual rule: no Java or Spring on the resume; no
// MariaDB, ClickHouse or Elasticsearch-as-a-developer claim; relational depth
// is shown only by the Django models at AveeHealth and the MongoDB sharding
// (not relational), so it is not overclaimed. No trading or brokerage domain:
// Nobitex is off the resume.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Trading 212 — Engineering",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Backend Engineer — Remote, Spain",
)

Dear Trading 212 Hiring Team,

You write that at your scale, performance, reliability and data integrity are
part of the product. I spent seven years at Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, where the same was true:
a slow or wrong answer was a lost ride or a late delivery. I developed and
maintained backend services in *Go* for real-time order processing and
delivery tracking, and built a real-time stream-processing service that
adjusted pricing to balance demand and supply, which increased accepted rides
by 5%.

Most of that work lived in a microservices architecture, and much of it was
about choosing how services talk. I led the design of a delivery architecture
on *NATS* at more than 300,000 messages per second, ran *Kafka* on Kubernetes
through the Strimzi operator, deployed *RabbitMQ* and *Redis* through their
operators, and raised the uptime of our central messaging queue by 5% with a
unified client SDK. Later I grew into lead engineer for platform architecture
on the company-wide cloud platform, so I have also been on call for what I
designed. At AveeHealth, a Canadian digital-health startup, I now own a
*Python* and *Django* backend end to end, from the database models to the
containerised deployment on *AWS*.

Some things stated rather than implied. I have not worked in Java or Spring;
my production languages are Go and Python, which your posting invites. MariaDB,
ClickHouse and Elasticsearch are not on my resume as tools I built with, and I
have no brokerage or trading background. I learn new ecosystems quickly, and I
would rather tell you this now than in an interview.

I live in Barcelona, on CET, and hold a Spanish residence permit valid to
2029, with the right to work without sponsorship.

Sincerely, \
Parham Alvani
