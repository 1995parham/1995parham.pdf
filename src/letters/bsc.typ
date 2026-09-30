// Cover letter — Barcelona Supercomputing Center (BSC-CNS),
// AI Factory Engineer - DevOps/MLOps, ref 331_26_DIR_IBD_DevOps.
//
// Build: just letter bsc  →  build/parham-bsc-cover-letter.pdf
//
// This letter is MANDATORY, not optional. The posting states: "A cover/
// motivation letter with a statement of interest in English, clearly
// specifying for which specific area and topics the applicant wishes to be
// considered. Additionally, two references for further contacts must be
// included. Applications without this document will not be considered."
// The web form labels the upload "Cover Letter (optional)" — that label is
// wrong for this requisition. Two structural consequences, both handled below:
// the letter names the area and topics explicitly, and it ends with two
// named references.
//
// >>> PARHAM MUST REPLACE THE TWO REFERENCE PLACEHOLDERS BEFORE SENDING. <<<
// They are rendered in the PDF in square brackets so they cannot be missed.
// Referees are other people's personal data and their consent; nobody should
// invent them on his behalf.
//
// Why this is the best fit in the search: BSC want the platform half and the
// ML half of the same engineer. Snapp! has both — KServe and Knative ML
// pipelines, an Ollama cluster with LiteLLM, a FastAPI self-service serving
// layer for the data science team, Airflow, ArgoCD operators, OpenTelemetry —
// and Avee Health adds a production RAG pipeline. Almost nothing else on the
// target list asks for both at once.
//
// Honesty constraints, per the note at the top of shared/professional.typ:
// Terraform and Prometheus/Grafana are in skills.typ with no bullet behind
// them, and there is no HPC experience anywhere. All three are disclosed
// rather than implied.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Barcelona Supercomputing Center --- Centro Nacional de Supercomputación",
  recipient-address: "Plaça d'Eusebi Güell 1-3, 08034 Barcelona, Spain",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  subject: "AI Factory Engineer — DevOps/MLOps (ref. 331_26_DIR_IBD_DevOps)",
)

Dear Recruitment Panel,

I am writing to be considered for the *AI Factory Engineer — DevOps/MLOps*
position, reference 331_26_DIR_IBD_DevOps, in the Directors Department. The
area and topics I wish to be considered for are the ones named in the mission:
the operational foundations that move AI services from experimentation into
production --- deployment pipelines, environment management and
reproducibility, observability for model-serving systems, and the multi-tenant
platform work that lets many teams share one set of those foundations safely.

This posting asks for two things that are usually found in two different
people: someone who operates Kubernetes and CI/CD in production, and someone
who understands the machine-learning and generative-AI deployment lifecycle. I
have spent the last five years doing both on the same platform.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I led the design and implementation of a company-wide cloud platform
and became its lead engineer for platform architecture. On it I implemented
_KServe_ and _Knative_ on _Kubernetes_ to build the ML pipelines, which reduced
resource consumption and improved data gathering by 10%. I built a _Python_ and
_FastAPI_ serving layer so the data science team could put their own models
into production without waiting on the platform team --- self-service from
notebook to endpoint, which is the reproducibility and release-management
problem this role describes. I replaced legacy cron jobs with _Airflow_ for
periodic processing, with proper monitoring and safe re-runs, and I deployed an
_Ollama_ cluster to host local LLMs with _LiteLLM_ distributing load between
local and third-party providers. That last piece is a generative-AI platform in
the sense the AI Factory means it: shared, operated, and answerable for cost.

On the DevOps side, I engineered Kubernetes operators --- custom resource
definitions and their controllers, in Go --- to automate _ArgoCD_
authentication and authorization across the company. That is the access
control, environment management and operational governance the requirements
ask for, expressed as declarative state that is reconciled continuously rather
than granted by hand. I implemented monitoring and alerting for real-time
observability with _OpenTelemetry_, ran Kafka through the _Strimzi_ operator and
RabbitMQ and Redis through theirs, and designed the messaging architecture
behind our delivery product with _NATS_ carrying over 300,000 messages per
second. The shared-services and multi-tenant experience you list as desirable
is not incidental here: my first team at Snapp! was the Shared Services team,
and the platform above served engineering groups across the company.

More recently, at AveeHealth, a Canadian digital-health company, I run the AWS
estate on managed _EKS_ and _ECS_ and built an AI transcription pipeline using
_Deepgram_, _RAG_ and _Pydantic AI_ that turns doctor--patient sessions into
structured clinical notes --- a production RAG system with real correctness and
privacy stakes rather than a prototype.

Three things I should state plainly rather than let you infer. I have *no HPC
background*: my large-scale work is consumer distributed systems, not
MareNostrum-class scientific computing, and I would be learning that context.
My infrastructure-as-code has been *operator- and Helm-based rather than
Terraform*. And my observability practice is built on OpenTelemetry rather
than on a particular vendor stack. I would rather you know all three now than
discover them in the interview.

What I bring alongside that is a Ph.D. in Computer Networks from Amirkabir
University of Technology, seven semesters lecturing there while working full
time, and a public open-source record --- 20 merged pull requests across eight
`nats-io` repositories, including the server and the JetStream Kubernetes
controller. Working in a research institution, with research colleagues, is a
setting I have been in before and want to return to.

I live in Barcelona and hold a Spanish residence permit valid to 2029, so no
sponsorship or relocation support is required.

#v(0.4em)
*References*

#v(0.2em)
[REFERENCE 1 --- full name, role, organisation, relationship to me, email, phone]

#v(0.2em)
[REFERENCE 2 --- full name, role, organisation, relationship to me, email, phone]

#v(0.4em)

Thank you for your consideration. I would welcome the chance to discuss the
role with the panel.

Sincerely, \
Parham Alvani
