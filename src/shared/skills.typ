#import "@preview/brilliant-cv:4.0.1": cv-section, cv-skill, cv-skill-tag, cv-skill-with-level, h-bar

#cv-section("Skills")

#cv-skill(
  type: [Languages],
  info: [
    #cv-skill-tag([Go])
    #cv-skill-tag([Python])
    #cv-skill-tag([Java])
    #cv-skill-tag([Rust])
    #cv-skill-tag([Scala])
    #cv-skill-tag([C])
  ],
)

#cv-skill(
  type: [Cloud & Orchestration],
  info: [AWS #h-bar() GCP #h-bar() Kubernetes #h-bar() Docker #h-bar() Helm],
)

#cv-skill(
  type: [Databases & Data Stores],
  info: [PostgreSQL #h-bar() MongoDB #h-bar() Cassandra #h-bar() Apache Spark #h-bar() Redis #h-bar() etcd],
)

#cv-skill(
  type: [Frameworks],
  info: [GoFiber #h-bar() Echo #h-bar() GORM #h-bar() Viper #h-bar() Django #h-bar() FastAPI],
)

#cv-skill(
  type: [Observability],
  info: [Prometheus #h-bar() Grafana #h-bar() Jaeger #h-bar() OpenTelemetry #h-bar() ELK Stack #h-bar() Datadog],
)

#cv-skill(
  type: [Infrastructure as Code],
  info: [Terraform #h-bar() Pulumi #h-bar() Ansible],
)

#cv-skill(
  type: [GitOps & CI/CD],
  info: [ArgoCD #h-bar() FluxCD #h-bar() Jenkins #h-bar() GitLab CI #h-bar() GitHub Actions],
)

#cv-skill(
  type: [Service Mesh],
  info: [Istio #h-bar() Linkerd],
)

#cv-skill(
  type: [Workflow Orchestration],
  info: [Airflow #h-bar() Temporal.io #h-bar() n8n],
)

#cv-skill(
  type: [Embedded & IoT],
  info: [NRF Modules #h-bar() Raspberry Pi #h-bar() SPI / I2C #h-bar() Network Programming],
)

#cv-skill-with-level(
  type: [English],
  level: 4,
  info: [Proficient],
)

#cv-skill-with-level(
  type: [Persian],
  level: 5,
  info: [Native],
)
