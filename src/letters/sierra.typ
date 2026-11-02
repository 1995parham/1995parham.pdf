// Cover letter — Sierra, Software Engineer, Agent, Madrid on-site.
//
// Build: just letter sierra  →  build/parham-sierra-cover-letter.pdf
//
// Written 2026-11-02. Agent engineers own customer-facing AI agents for large
// enterprises end to end (the Agent Development Life Cycle), working directly
// with the customer, and feed what they learn back into the platform. The
// letter leads on the two production LLM systems (AveeHealth clinical notes,
// the compliance RAG agent) and the freelance work done directly with clients,
// then on the production systems behind them.
//
// Gaps stated per the usual rule: no evaluation framework built, no voice
// agents (Deepgram transcription only), React / TypeScript not on the resume
// (Vue and Go are). The Madrid move is stated: he lives in Barcelona and is
// open to relocating within Spain.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Sierra — Agent Engineering",
  recipient-address: "Madrid, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Software Engineer — Agent, Madrid",
)

Dear Sierra Hiring Team,

You say your agents are not prototypes, and that is the line I care about.
At AveeHealth I built an AI-powered pipeline with _Deepgram_, *RAG* and
_Pydantic AI_ that transcribes doctor--patient sessions and turns them into
structured clinical notes. That is healthcare --- one of the industries you
name --- where an answer that sounds right but is
wrong is the failure that matters.

My second production agent is a compliance assistant that guides teams through
certifications such as SOC 2, answering privacy and controls questions
against current regulatory text. I built it for a client, end to end:
ingestion of regulations and articles every day through _Cloud Run_ jobs, so
answers track the requirements as they change; a *vector database* for
semantic search; and the model served through _Vertex AI_. Most of my recent
work has been like that --- directly with the customer, from their problem to
a running system. For a US security startup I built the on-device agent in
*Go* that monitors their customers' device fleets and executes commands from
the backend, and at Offerland I built a farm-appraisal platform now live across
three Canadian provinces.

Underneath is ten years of production systems. At Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, I led the company-wide
cloud platform, designed a *NATS*-based architecture handling more than
300,000 messages per second, and deployed an _Ollama_ cluster behind _LiteLLM_
to route between local and third-party models. I know what it takes to keep
something mission-critical up after launch day.

Some things stated rather than implied. I have not built a formal evaluation
framework for agents, which I know is central to how you work. My voice work
is transcription, not real-time voice agents. And my frontend has been _Vue_,
not _React_ or _TypeScript_; on the backend, *Go* is my strongest language.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship. I am ready to relocate to Madrid to
work from your office.

Sincerely, \
Parham Alvani
