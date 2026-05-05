// Resume entry point. Variants are selected at compile time:
//   typst compile src/cv.typ build/parham.pdf         --input profile=turkey
//   typst compile src/cv.typ build/parham-iran.pdf    --input profile=iran
// Profiles only differ in the contact block (phone + location); section
// content lives under shared/.

#import "@preview/brilliant-cv:4.0.1": cv

#let profile = sys.inputs.at("profile", default: "turkey")
#let metadata = toml("profile_" + profile + "/metadata.toml")

#show: cv.with(
  metadata,
  profile-photo: image("profile.jpg"),
)

#include "shared/summary.typ"
#include "shared/professional.typ"
#include "shared/skills.typ"
#include "shared/projects.typ"
#include "shared/education.typ"

// Optional sections — uncomment to include.
// #include "shared/honors.typ"
// #include "shared/certificates.typ"
// #include "shared/teaching.typ"
