// Cover letter — LiveKit, Staff Software Engineer, Distributed Systems,
// remote (North America primary; EMEA and APJ listed as secondary locations).
//
// Build: just letter livekit  →  build/parham-livekit-cover-letter.pdf
//
// Written 2026-11-03. A Staff IC across LiveKit Cloud's core services,
// telephony and observability: control, data and observability planes,
// region-spanning architectures, libraries and protocols (psrpc, which rides
// on Redis or NATS), on Go, gRPC, Raft, NATS, Kubernetes, Prometheus,
// OpenTelemetry and ClickHouse. The letter leads on Pion at Avidnet (the
// LiveKit server is built on Pion), then NATS at 300k msg/s and the client
// SDK, then the networking Ph.D. and the reliable layer-2 protocol.
//
// Gaps stated per the usual rule: no consensus work (Raft, etcd, Paxos), no
// multi-region architecture, no telephony / SIP, ClickHouse not on the
// resume, Prometheus in skills only. The Pion work is dated plainly (2014 to
// 2016). Staff scope is argued from "lead engineer for platform
// architecture", not claimed as a title.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "LiveKit — Engineering",
  recipient-address: "Remote, EMEA",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Staff Software Engineer — Distributed Systems, EMEA",
)

Dear LiveKit Hiring Team,

My first real-time media system was built on _Pion_, the same Go WebRTC stack
your server stands on. At Avidnet, between 2014 and 2016, I built in-app video
calling on *WebRTC* with the Pion framework --- one of its earliest adoptions
in the region --- and a distributed design that handled 1,000 concurrent
calls. Adding stable calling raised the app's installation rate by 5%. It was
a decade ago and far smaller than LiveKit Cloud, but it was real-time media
in Go on the same foundation.

Since then my work has been the messaging and coordination layer underneath
large systems. At Snapp!, Iran's largest ride-hailing platform with more than
50 million users, I led the design of a microservice architecture on *NATS*
handling more than 300,000 messages per second, and built a unified client SDK
that raised the uptime of our central messaging queue by 5%. I deployed
_Redis_, _RabbitMQ_ and _Kafka_ on *Kubernetes* through their operators, wrote
Kubernetes operators of my own, sharded our chat-message MongoDB cluster to
cut response time by 50%, and added monitoring and alerting with
*OpenTelemetry*. I grew into lead engineer for platform architecture there,
and mentored teams across the company on how to use messaging systems well.

Protocols are where I started. My Ph.D. is in Computer Network, and in my
research years I designed a reliable layer-2 transport --- stop-and-wait ARQ
with retries --- over raw NRF radio modules, so packets arrived in noisy
environments. *Go* has been my main language throughout: backend services for
real-time order processing at Snapp!, and the on-device agent I built for a
US security startup, streaming telemetry upstream and executing commands
pushed back down over a message broker.

Some things stated rather than implied. I have not implemented or operated
consensus systems such as Raft or etcd, and I have not built a multi-region
architecture. I have no telephony or SIP experience. ClickHouse is not on my
resume, and Prometheus appears only in my skills list.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship, so an EMEA-remote role suits me well.

Sincerely, \
Parham Alvani
