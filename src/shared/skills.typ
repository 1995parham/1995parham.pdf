#import "@preview/brilliant-cv:4.0.1": cv-section, cv-skill, cv-skill-tag, cv-skill-with-level

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
  info: [
    #cv-skill-tag([AWS])
    #cv-skill-tag([GCP])
    #cv-skill-tag([Kubernetes])
    #cv-skill-tag([Docker])
    #cv-skill-tag([Helm])
  ],
)

#cv-skill(
  type: [Databases & Data Stores],
  info: [
    #cv-skill-tag([PostgreSQL])
    #cv-skill-tag([MongoDB])
    #cv-skill-tag([Cassandra])
    #cv-skill-tag([Apache Spark])
    #cv-skill-tag([Redis])
    #cv-skill-tag([etcd])
  ],
)

#cv-skill(
  type: [Frameworks],
  info: [
    #cv-skill-tag([GoFiber])
    #cv-skill-tag([Echo])
    #cv-skill-tag([GORM])
    #cv-skill-tag([Viper])
    #cv-skill-tag([Django])
    #cv-skill-tag([FastAPI])
  ],
)

#cv-skill(
  type: [Observability],
  info: [
    #cv-skill-tag([Prometheus])
    #cv-skill-tag([Grafana])
    #cv-skill-tag([Jaeger])
    #cv-skill-tag([OpenTelemetry])
    #cv-skill-tag([ELK Stack])
    #cv-skill-tag([Datadog])
  ],
)

#cv-skill(
  type: [Infrastructure as Code],
  info: [
    #cv-skill-tag([Terraform])
    #cv-skill-tag([Pulumi])
    #cv-skill-tag([Ansible])
  ],
)

#cv-skill(
  type: [GitOps & CI/CD],
  info: [
    #cv-skill-tag([ArgoCD])
    #cv-skill-tag([FluxCD])
    #cv-skill-tag([Jenkins])
    #cv-skill-tag([GitLab CI])
    #cv-skill-tag([GitHub Actions])
  ],
)

#cv-skill(
  type: [Service Mesh],
  info: [
    #cv-skill-tag([Istio])
    #cv-skill-tag([Linkerd])
  ],
)

#cv-skill(
  type: [Workflow Orchestration],
  info: [
    #cv-skill-tag([Airflow])
    #cv-skill-tag([Temporal.io])
    #cv-skill-tag([n8n])
  ],
)

#cv-skill(
  type: [Embedded & IoT],
  info: [
    #cv-skill-tag([NRF Modules])
    #cv-skill-tag([Raspberry Pi])
    #cv-skill-tag([SPI / I2C])
    #cv-skill-tag([Network Programming])
  ],
)

#cv-section("Languages")

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
