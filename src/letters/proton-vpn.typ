// Cover letter — Proton, Senior Systems & Reliability Engineer (VPN),
// Barcelona.
//
// Build: just letter proton-vpn  →  build/parham-proton-vpn-cover-letter.pdf
//
// Written 2026-10-03. Note there is a SECOND, separate Proton application
// already filled and awaiting submit: Senior R&D Engineer, token 4725157101,
// which has a stale "this field is required" warning under the packet-capture
// answer. Different team, different req. Decide whether to send both.
//
// The requirement list here is the closest match in the whole search to what
// the Ph.D. actually covers: Debian/Linux internals, nftables, the networking
// stack and kernel tuning, in "adversarial network environments".
//
// ⚠ ONE THING TO CONFIRM WITH PARHAM BEFORE SENDING.
// The paragraph beginning "I have also built and operated systems" refers to
// working inside a heavily filtered national network at Snapp. That is almost
// certainly true — Iran blocks and throttles at national scale, and a platform
// team there deals with it daily — but it is HIS experience to characterise,
// not mine to assert, and nothing on the resume evidences it. If he does not
// want it in, cut that paragraph; the letter still stands without it.
//
// Gap disclosed: VictoriaMetrics specifically. Prometheus and Grafana are
// skills.typ entries rather than bullets, and OpenTelemetry is the one
// observability bullet, so the claim is kept to that.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Proton",
  recipient-address: "Barcelona, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Systems & Reliability Engineer — VPN Infrastructure",
)

Dear Proton VPN Infrastructure Team,

Your requirement list reads as Debian internals, nftables, the Linux
networking stack and kernel tuning, applied in adversarial network
environments. I hold a *Ph.D. in Computer Networks*, and that is the first
role I have seen where the doctorate is the job rather than a line at the
bottom of the page.

It has earned its keep operationally, not academically. At Snapp!, Iran's
largest ride-hailing platform with more than 50 million users, a service of
ours was handling almost no requests while Prometheus node exporter showed its
interface pinned at its throughput cap. Nothing had alerted, because nothing
was failing --- the only signal was two numbers that should have agreed and did
not. Capturing on the interface showed a sustained stream of inbound
connection attempts from an external source, reaching our virtual machine
through a MAC address and layer-2 routing fault on our segment. The traffic
was never ours. That is the shape of the work you describe: the interesting
failures are the ones that do not announce themselves.

Lower down the stack, at Avidnet I engineered a *reliable layer-2 transport
protocol* --- Stop-and-Wait ARQ with retry logic --- directly on top of raw NRF
radio modules, to guarantee delivery in a noisy environment, and configured
bare-metal *HPE ProLiant* servers on *VMware ESXi*. I have also achieved
in-application video calling over *WebRTC* using the *Pion* framework in Go,
one of the earliest adoptions of Pion in the region, handling 1,000 concurrent
calls through a distributed design. Protocol-level work is not new territory
for me.

On the rest of your list. *Python* is daily work: I replaced a legacy cron
estate with _Airflow_ so periodic processing had real monitoring and safe
re-runs, and built a Python and _FastAPI_ serving layer so the data science
team could deploy their own models. I ran *Kubernetes* in production as the
company-wide platform at Snapp! and currently operate the *AWS* estate at
AveeHealth on managed _EKS_ and _ECS_. I am comfortable on an on-call
rotation; I have been the person who found the intrusion above.

I have also built and operated systems inside a heavily filtered national
network, where reaching package registries, module proxies and upstream
services could not be assumed and had to be designed around. Censorship
resistance is not an abstraction to me.

One thing stated plainly: my observability practice is *OpenTelemetry*,
Prometheus and Grafana rather than *VictoriaMetrics* specifically, so that
one I would be picking up rather than bringing.

I live in Barcelona and hold a Spanish residence permit valid to 2029, so no
sponsorship is required. Proton is one of the few companies whose product I
would want to work on regardless of the role.

Sincerely, \
Parham Alvani
