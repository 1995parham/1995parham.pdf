// Cover letter — Kraken (Payward), Senior Software Engineer – Agent Systems,
// remote, Spain listed among the eligible countries.
//
// Build: just letter kraken  →  build/parham-kraken-cover-letter.pdf
//
// Written 2026-11-11. The team is a 0→1 group building internal AI agents that
// act on company systems: inference pipelines over user interactions, backend
// services across many internal APIs, safe and observable agent execution.
// The letter leads on the AveeHealth transcription pipeline (Deepgram, RAG,
// Pydantic AI → structured SOAP notes) as LLM work in production, then the RAG
// compliance agent, the Ollama + LiteLLM routing at Snapp!, and the internal
// platform tooling (ArgoCD operators, FastAPI model serving, the client SDK).
//
// Gaps stated per the usual rule: no evaluation framework or model tuning on
// the resume, no guardrails or sandboxing layer, and no multi-step tool-using
// agent platform — the RAG agent answers, it does not act. Crypto is not
// claimed: Nobitex was removed from the resume on 2026-09-29.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Kraken — Agent Systems",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior Software Engineer — Agent Systems",
)

Dear Kraken Hiring Team,

You describe Agent Systems as a team that prototypes quickly but keeps a high
bar for production reliability. That is how I have built with language models
so far. At AveeHealth, a Canadian digital-health startup, I built an
AI-powered transcription pipeline with *Deepgram*, *RAG* and *Pydantic AI*: it
transcribes doctor-patient sessions and turns them into structured SOAP notes
that doctors use in their daily work. Typed, validated output was the point
--- a note that a doctor cannot trust is worse than no note.

I have built retrieval agents as well. As a freelancer I built a RAG agent that
guides teams through compliance certifications such as SOC 2, with a daily
ingestion job on *Cloud Run* that keeps its corpus current, a vector database
for retrieval and inference through *Vertex AI*. At Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, I deployed an *Ollama*
cluster for local models and put *LiteLLM* in front of it to route load between
local and third-party providers, and I built a *FastAPI* serving layer that let
the data science team ship their models as production APIs.

Most of my career is the backend and platform work that agents depend on.
At Snapp! I grew into lead engineer for platform architecture on the
company-wide cloud platform, built Kubernetes operators that automated ArgoCD
access, designed a delivery architecture on *NATS* at more than 300,000
messages per second, and raised the uptime of our central messaging queue by
5% with a unified client SDK. Internal tools used by other engineers are the
work I know best, and I am comfortable on the frontend when it is needed: I
built AveeHealth's doctors panel in Python and Vue.

Some things stated rather than implied. I have not built an evaluation
framework or tuned model performance, and I have not designed guardrails or
sandboxing for agents. My agents retrieve and answer; I have not yet run one
that takes multi-step actions across internal systems. That is the work I want
to do next, and a 0→1 team is where I would learn it fastest.

I live in Barcelona, on CET, and hold a Spanish residence permit valid to
2029, with the right to work without sponsorship.

Sincerely, \
Parham Alvani
