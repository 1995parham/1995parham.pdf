// Cover letter — Typeform, Senior AI Engineer - EU, remote (Spain eligible).
//
// Build: just letter typeform  →  build/parham-typeform-cover-letter.pdf
//
// Written 2026-11-02. The AI Engineering team builds Research Flow (AI-moderated
// research conversations turned into insights) and owns AI work from experiment
// to production: LLM apps, enterprise RAG, agents, evaluation, and the Python /
// Kubernetes / AWS / Kafka / Airflow infrastructure under it. The letter leads
// on the two RAG systems and the AveeHealth conversation-to-structured-notes
// pipeline, which is close to Research Flow in shape, then on the serving and
// pipeline infrastructure, where his record is strongest.
//
// Gaps stated per the usual rule: LangChain / LangGraph, MLflow, SageMaker /
// Bedrock, a formal automated-evaluation pipeline, Terraform (skills-only) and
// Datadog. "Four years of ML/AI in production" is not claimed as such: the ML
// serving work at Snapp! and the LLM work since are stated as what they are.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Typeform — AI Engineering",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Senior AI Engineer — EU",
)

Dear Typeform Hiring Team,

Research Flow turns a conversation into something a team can act on. The
closest thing I have built is at AveeHealth, where I built an AI-powered
pipeline with _Deepgram_, *RAG* and _Pydantic AI_ that transcribes
doctor--patient sessions and generates structured clinical notes --- an
unstructured conversation in, a structured and reviewable record out, where
getting the facts wrong is not an option.

My other production RAG system is a compliance agent that guides teams through
certifications such as SOC 2, answering privacy and controls questions against
current regulatory text. I built the whole path: daily ingestion of
regulations, standards and articles through _Cloud Run_ jobs, so answers
follow the requirements as they change; embedding the corpus into a *vector
database* for semantic search; and serving the model through _Vertex AI_, with
ingestion, retrieval and inference on one platform.

You say the team owns the journey from experiment to production, and the
production half is where my record is longest. At Snapp!, Iran's largest
ride-hailing platform with more than 50 million users, I led the company-wide
cloud platform. I implemented _KServe_ and _Knative_ on *Kubernetes* for ML
pipelines, built a *Python* / *FastAPI* serving layer that let the data
science team take their models from notebook to production HTTP APIs
themselves, and deployed an _Ollama_ cluster behind _LiteLLM_ to route between
local and third-party models. The pipelines you name are familiar too: I
replaced legacy cron jobs with *Airflow* and ran *Kafka* on Kubernetes through
the _Strimzi_ operator. Today I run the platform at AveeHealth on *AWS*, with
managed *EKS* and *ECS*.

Some things stated rather than implied. My LLM work has used Pydantic AI and
direct model APIs rather than _LangChain_ or _LangGraph_; I have not used
_MLflow_, _SageMaker_ or _Bedrock_; I have not yet built an automated
evaluation pipeline for generative AI, which I would want to do properly here;
and my infrastructure-as-code has been operator-
and GitOps-based rather than _Terraform_, with no _Datadog_. I would pick these
up rather than bring them.

I live in Barcelona, Spain, and hold a Spanish residence permit valid to 2029,
with the right to work without sponsorship.

Sincerely, \
Parham Alvani
