// Cover letter — n8n, Staff Platform Engineer, Agentic Engineering, remote
// (Spain eligible).
//
// Build: just letter n8n  →  build/parham-n8n-cover-letter.pdf
//
// Written 2026-11-02. A Staff IC in Developer Platform who drives ACDC, the
// engineering-wide initiative for agentic development: isolated execution
// environments for agents, the safety model, an agent-ready monorepo, Linear →
// agent → reviewed PR workflows, and benchmarks that decide what stays. The
// letter leads on the company-wide platform at Snapp! (platform as a product,
// self-service, ArgoCD access control as code) and the LiteLLM routing (AI
// spend), then on how he works with coding agents day to day.
//
// Gaps stated per the usual rule: he has not built agent infrastructure for a
// whole engineering organisation (sandboxed agent execution, agents in CI),
// has no formal benchmark or evaluation framework, and has no TypeScript /
// Node.js monorepo experience. Staff scope is argued from "lead engineer for
// platform architecture", not claimed as a title.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "n8n — Developer Platform",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Staff Platform Engineer — Agentic Engineering",
)

Dear n8n Hiring Team,

You write that nobody has a playbook for agentic development yet. I agree, and
it is the problem I think about most: I run coding agents every day, and I
rebuild how I work each time the models move. The repository behind my own
resume is set up for them --- project instructions an agent reads before it
touches anything, and a read-only subagent that may answer questions only from
the source files and must say when something is not there. Small, but it is
the same question you are asking at scale: what context an agent needs, what
it may touch, and how a human can trust what comes back.

The platform half of the role is where my record is. At Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, I led the design of the
company-wide cloud platform and became lead engineer for its architecture.
I treated it as a product for the engineers on it. Access to _Argo CD_ was a
manual step that did not scale with the number of teams, so I wrote
*Kubernetes operators* in *Go* that set its authentication and authorisation
from declared state --- permissions as reviewed code, not tickets. I built a
*Python* / *FastAPI* serving layer that let the data science team take their
models from notebook to production on their own, and a unified client SDK for
the central message queue that raised its uptime by 5%. I also mentored teams
across the company on messaging practice, which is how platform decisions
spread without authority.

On AI spend: I deployed an _Ollama_ cluster for local models and put
_LiteLLM_ in front of it to route between local and third-party providers, so
cost and capability became a routing decision rather than a rewrite. I have
also shipped LLM systems to production: a *RAG* and _Pydantic AI_ pipeline at
AveeHealth that turns doctor--patient sessions into structured clinical notes,
and a compliance agent served on _Vertex AI_. And I work in the open: 20 merged
pull requests across eight `nats-io` repositories, including `nack`, a
JetStream Kubernetes controller.

Some things stated rather than implied. I have not yet built agent
infrastructure for a whole engineering organisation --- sandboxed agent
execution, agents running in CI, Linear-to-PR workflows --- and I have not
built a formal benchmark for agent output; I would start by doing exactly
that, from your real historical tasks. I have not worked in a large
*TypeScript* or Node.js monorepo. Staff is the scope I worked at, not a title
I held.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship.

Sincerely, \
Parham Alvani
