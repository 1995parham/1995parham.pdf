// Cover letter — Mozilla, Staff Site Reliability Engineer, Tools & Systems,
// Remote Spain.
//
// Build: just letter mozilla  →  build/parham-mozilla-cover-letter.pdf
//
// Written 2026-10-26. The role supports Firefox engineering: developer
// tooling, CI/CD, workflow automation, AI-assisted development tools, and
// helping teams operate what they own on shared Cloud Engineering platforms.
// The letter therefore leads on self-service — the notebook-to-platform
// serving layer and the Argo CD operators — rather than on scale, and uses
// the open-source record because Mozilla says contributing back is part of
// the job.
//
// Gaps stated per the usual rule: Terraform (skills-only) and C++/Rust (they
// call it "useful"; Rust appears only in skills/inject, never in a bullet).

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Mozilla — Tools & Systems",
  recipient-address: "Remote, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "Staff Site Reliability Engineer — Tools & Systems",
)

Dear Mozilla Hiring Team,

You describe a model where Cloud Engineering provides the shared platform,
teams own what they run on it, and this role makes that model work by solving
the hard operational problems and turning them into standards and tooling.
That is the model I built and ran at Snapp!, from the platform side, and the
part that interested me most was always the boundary between the two.

At Snapp!, Iran's largest ride-hailing platform with more than 50 million
users, I led the design and implementation of the company-wide cloud platform
and became lead engineer for its architecture. Two pieces of that work are
the closest to what you describe. First, authorisation on our _Argo CD_
deployments was a manual step that did not scale with the number of teams, so
I wrote *Kubernetes operators* in *Go* that configured authentication and
authorisation from declared state. Second, the data science team could not
get their models into production without us, so I built a *Python* /
*FastAPI* serving layer that exposed their models as production HTTP APIs and
let them deploy from notebook to platform themselves. I also replaced a
legacy cron estate with _Airflow_, which is less glamorous and probably did
more for reliability than anything else: jobs gained monitoring, history and
safe re-runs.

You ask for someone comfortable jumping into unfamiliar systems. My record is
broad on purpose --- Kafka, RabbitMQ and Redis on Kubernetes through their
operators, KServe and Knative for ML serving, an Ollama cluster behind LiteLLM
for local and third-party LLMs, and today the AWS estate at AveeHealth on
managed EKS and ECS. On telemetry, I implemented monitoring and alerting with
*OpenTelemetry*, and I hold a Ph.D. in Computer Networks, which is useful
mainly for the incidents nobody else wants. Open source matters to me as well:
I have 20 merged pull requests across eight `nats-io` repositories, including
`nack`, a JetStream Kubernetes controller, with its end-to-end tests.

I use AI-assisted development tools daily, and treat their output the way I
would a colleague's pull request: built, tested and read before it ships.

Two things stated rather than implied. My infrastructure-as-code has been
*operator-, Helm- and GitOps-based* rather than *Terraform*, and I have not
worked professionally in *C++* or *Rust*. The first I would pick up quickly;
the second I would grow into where the Firefox tooling needs it.

I live in Barcelona, Spain, and hold a Spanish residence permit valid to 2029.

Sincerely, \
Parham Alvani
