// Cover letter — Perk (formerly TravelPerk), DevOps Engineer, Platform,
// Barcelona hybrid (3 office days).
//
// Build: just letter perk-devops  →  build/parham-perk-devops-cover-letter.pdf
//
// Written 2026-11-03. The Platform function owns shared infrastructure, core
// services and developer tooling; the role designs and runs AWS infrastructure,
// enables product teams to own their systems, partners with SRE and security,
// and joins on-call. Requirements: AWS (EC2, S3, RDS, IAM, VPC), IaC (Terraform
// / Pulumi), CI/CD (GitHub Actions / CircleCI), Datadog / CloudWatch, Docker /
// ECS, Python or Go. The letter leads on the Snapp! platform (operators, Argo
// CD, self-service FastAPI layer), then the AWS work (EKS / ECS at AveeHealth,
// EC2 / Lambda at Offerland), then the SOC 2 agent for the compliance line.
//
// Gaps stated per the usual rule, and this role has several: Terraform /
// Pulumi (skills-only, and a requirement), Datadog / CloudWatch (not on the
// resume — OpenTelemetry is), the AWS networking and IAM side (S3, RDS, IAM,
// VPC are not named on the resume), CI tooling (GitHub Actions skills-only,
// CircleCI absent), and Windows / .NET.

#import "@preview/brilliant-cv:4.0.1": letter

#let metadata = toml("../profile_spain/metadata.toml")

#show: letter.with(
  metadata,
  sender-address: "Avinguda Diagonal 571, 08029 Barcelona, Spain",
  recipient-name: "Perk — Platform",
  recipient-address: "Barcelona, Spain",
  // Literal em dash: `subject` is a plain string, not markup.
  subject: "DevOps Engineer — Platform, Barcelona",
)

Dear Perk Hiring Team,

You describe a Platform function whose work is behind the scenes but whose
impact is everywhere, and whose goal is to let product teams own their systems.
That is the job I did at Snapp!, Iran's largest ride-hailing platform with more
than 50 million users, where I led the design and implementation of the
company-wide cloud platform and became lead engineer for its architecture. I
wrote *Kubernetes* operators that automate _Argo CD_ authentication and
authorization, and built a *Python* / *FastAPI* serving layer that let the data science team
take their models from notebook to production themselves.

On *AWS*, I run the platform at AveeHealth today: managed *EKS* clusters and
*ECS* for containerized workloads, with the development lifecycle carried from
technical design through to *Docker*-based deployment. At Offerland I deployed
a *Django* farm-appraisal platform on *EC2* with *Lambda* functions, so the
serverless side you mention is not new to me. I write *Go* and *Python*, and
much of my platform work has been code rather than configuration.

The reliability half of the role is where Snapp! taught me most. I wrote a
unified client SDK for our central messaging queue that raised its uptime by
5%, implemented monitoring and alerting with _OpenTelemetry_, replaced legacy
cron jobs with _Airflow_ for re-runnable data processing, and ran _Kafka_,
_RabbitMQ_ and _Redis_ on Kubernetes through their operators. On compliance, I
recently built an agent that guides teams through certifications such as
*SOC 2*, so the framework itself is familiar ground.

Some things stated rather than implied, because several touch your
requirements. My infrastructure-as-code has been Kubernetes operators and
GitOps rather than _Terraform_ or _Pulumi_. My AWS work has been the compute
side --- EKS, ECS, EC2 and Lambda --- and I would not claim depth in VPC
networking or IAM design. My monitoring has been _OpenTelemetry_, not
_Datadog_ or _CloudWatch_; I have not used _CircleCI_; and I have no Windows
or .NET experience.

I live in Barcelona and hold a Spanish residence permit valid to 2029, with
the right to work without sponsorship. I am ready to work from your Barcelona
office three days a week.

Sincerely, \
Parham Alvani
