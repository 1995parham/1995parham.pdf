// Cover letter — Stripe, Backend Engineer, UI Platform (Sail Services),
// Barcelona.
//
// Build: just letter stripe  →  build/parham-stripe-cover-letter.pdf
//
// Written 2026-11-11. Sail Services owns feature-flag and experiment
// evaluation, frontend analytics ingestion and Dashboard load time: a
// backend-for-frontend layer with APIs, GraphQL integrations, edge systems and
// large migrations done with shadow traffic and staged rollouts. The posting
// makes fluency with AI-assisted and agentic development a minimum
// requirement.
//
// The letter leads on shared platform work at Snapp! (the company-wide cloud
// platform, the client SDK in every request path, the ArgoCD operators), the
// PHP migration that raised availability by 20%, the doctors-panel migration
// at AveeHealth done without disruption, and the GraphQL API at Nahalco.
//
// Gaps stated per the usual rule: no feature-flag or experimentation system,
// no shadow-traffic migration, no edge or CDN work, and the GraphQL is a
// single API from years ago. Daily use of Claude Code is stated as fact — it is
// how he works — but nothing on the resume evidences it.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Stripe — UI Platform (Sail)",
  recipient-address: "Barcelona, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Backend Engineer — UI Platform, Barcelona",
)

Dear Stripe Hiring Team,

Sail Services gives product teams one way to build user experiences, so they
do not each rebuild the same infrastructure. Turning repeated problems into a
shared platform is the work I have done most. At Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, I led the design of the
company-wide cloud platform and grew into lead engineer for platform
architecture. I built Kubernetes operators that automated ArgoCD access for
every team, and a unified client SDK for our central messaging queue that
raised its uptime by 5% --- code that sat in the request path of services I did
not own, which is where a platform team earns or loses trust.

Your posting also asks for careful migrations. At Snapp! I moved critical
legacy PHP applications to a modern platform and cloud infrastructure, which
raised their availability by 20%. At AveeHealth, a Canadian digital-health
startup, I led a new doctors panel in *Python* and *Vue* and moved its users
from the old system without disruption. I have built a *GraphQL* API, at
Nahalco, and a *FastAPI* serving layer at Snapp! that let the data science
team ship models as production APIs.

AI-assisted development is how I work every day: I use Claude Code for
implementation, tests and reviews, and I read what it writes as critically as
a colleague's pull request. I have also built LLM systems in production,
including an AI transcription pipeline at AveeHealth.

Some things stated rather than implied. I have not built a feature-flag or
experimentation system, I have not run a migration with shadow traffic, and I
have not worked on edge systems. My GraphQL work is one API, some years ago.
I know the problems these tools solve from the platform side, and they are
what I would want to learn at Stripe.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
