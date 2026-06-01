// Resume entry point. A profile MUST be selected explicitly at compile time:
//   typst compile src/cv.typ build/parham-turkey.pdf --input profile=turkey
//   typst compile src/cv.typ build/parham-iran.pdf   --input profile=iran
// Profiles only differ in the contact block (phone + location); section
// content lives under shared/.

#import "@preview/brilliant-cv:4.0.1": cv

#let profile = if "profile" in sys.inputs {
  sys.inputs.profile
} else {
  panic("no profile selected — pass --input profile=turkey or profile=iran")
}
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
