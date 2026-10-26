// Cover letter — ElevenLabs, Full-Stack Engineer (Backend Leaning), Core
// Platform, remote.
//
// Build: just letter elevenlabs  →  build/parham-elevenlabs-cover-letter.pdf
//
// Written 2026-10-26. Core Platform owns users, workspaces and permissions
// across ElevenLabs' products, on the path of every request. Requirements:
// Python expertise, backend depth with comfort across the stack, system
// design, test and security fundamentals, careful changes to live systems.
// The letter leads on the AveeHealth doctors-panel migration (Python + Vue,
// users moved without disruption) and the Argo CD authn/authz operators,
// which are the closest evidence to a permissions platform other teams use.
//
// Gaps stated: no dedicated authorization service (OpenFGA/Zanzibar-style)
// has been built; frontend is Vue, not React.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "ElevenLabs — Core Platform",
  recipient-address: "Remote",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Full-Stack Engineer (Backend Leaning) — Platform Engineering",
)

Dear ElevenLabs Team,

You describe Core Platform as the systems that sit on the path of every
request, where a change must roll out without disrupting users or the teams
that build on you. The work I am proudest of has that shape.

At AveeHealth, a Canadian digital-health startup, I led the development of a
new doctors panel in *Python* and *Vue* and migrated its users from the old
system without disruption. I designed the *Django* data models, which were the
hardest part of that project, ran the delivery end to end from technical design
to containerised deployment, and built an AI transcription pipeline with
_Deepgram_, RAG and _Pydantic AI_ that turns doctor--patient sessions into
structured clinical notes. Before that, at Snapp!, I built a *Python* /
*FastAPI* serving layer that let the data science team deploy their models from
notebook to production themselves.

On access control and shared platforms: at Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, authorisation on our
_Argo CD_ deployments was a manual step that did not scale with the number of
teams, so I wrote *Kubernetes operators* in *Go* that configured
authentication and authorisation from declared state. I led the design of the
company-wide cloud platform that every product team built on, and built a
unified client SDK for our central message queue that raised its uptime by 5%
without each team rewriting its code. My open-source work is public: 20
merged pull requests across eight `nats-io` repositories.

Two things stated rather than implied. I have not built a dedicated
permissions service of the kind you describe for a million agents, and my
frontend work has been in Vue rather than React. Python backends and careful
changes to live systems are what I bring from the first week.

I live in Barcelona and hold a Spanish residence permit valid to 2029, so I
can work remotely for you from Spain without sponsorship.

Sincerely, \
Parham Alvani
