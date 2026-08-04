#import "@preview/brilliant-cv:4.0.1": cv-section, cv-skill, cv-skill-tag, cv-skill-with-level

#cv-section("Skills")

// Curated for a human reader, not for keyword matching: the [inject] block in
// each profile's metadata.toml already feeds an invisible keyword list to ATS
// parsers, so this list does not need to be exhaustive. Entries here should be
// defensible in an interview and, ideally, evidenced by a bullet above.
//
// Category labels are kept to ~14 characters; the label column is narrow and
// longer ones wrap onto a second line ("Infrastructure as / Code").

#cv-skill(
  type: [Languages],
  info: [
    #cv-skill-tag([Go])
    #cv-skill-tag([Python])
    #cv-skill-tag([Rust])
    #cv-skill-tag([C])
  ],
)

#cv-skill(
  type: [Cloud Native],
  info: [
    #cv-skill-tag([Kubernetes])
    #cv-skill-tag([Docker])
    #cv-skill-tag([Helm])
    #cv-skill-tag([Istio])
    #cv-skill-tag([Knative])
    #cv-skill-tag([KServe])
    #cv-skill-tag([AWS])
    #cv-skill-tag([GCP])
  ],
)

#cv-skill(
  type: [Messaging],
  info: [
    #cv-skill-tag([NATS])
    #cv-skill-tag([Kafka])
    #cv-skill-tag([Strimzi])
  ],
)

#cv-skill(
  type: [Data],
  info: [
    #cv-skill-tag([PostgreSQL])
    #cv-skill-tag([MongoDB])
    #cv-skill-tag([Redis])
    #cv-skill-tag([Apache Spark])
    #cv-skill-tag([Airflow])
  ],
)

#cv-skill(
  type: [Frameworks],
  info: [
    #cv-skill-tag([Django])
    #cv-skill-tag([FastAPI])
    #cv-skill-tag([Vue])
    #cv-skill-tag([GoFiber])
    #cv-skill-tag([Echo])
  ],
)

#cv-skill(
  type: [Observability],
  info: [
    #cv-skill-tag([Prometheus])
    #cv-skill-tag([Grafana])
    #cv-skill-tag([OpenTelemetry])
    #cv-skill-tag([Jaeger])
  ],
)

#cv-skill(
  type: [GitOps & IaC],
  info: [
    #cv-skill-tag([ArgoCD])
    #cv-skill-tag([Terraform])
    #cv-skill-tag([Ansible])
    #cv-skill-tag([GitHub Actions])
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
