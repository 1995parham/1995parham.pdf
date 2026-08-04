// Resume entry point. A profile MUST be selected explicitly at compile time:
//   typst compile src/cv.typ build/parham-spain.pdf --input profile=spain
//   typst compile src/cv.typ build/parham-iran.pdf  --input profile=iran
// Profiles only differ in the contact block (phone + location); section
// content lives under shared/.

#import "@preview/brilliant-cv:4.0.1": cv

#let profile = if "profile" in sys.inputs {
  sys.inputs.profile
} else {
  panic("no profile selected — pass --input profile=spain or profile=iran")
}
#let metadata = toml("profile_" + profile + "/metadata.toml")

#show: cv.with(
  metadata,
  profile-photo: image("profile.jpg"),
)

// Keep an entry header with its bullets. brilliant-cv lays the
// society/title/date header out as a table immediately followed by the
// description, so marking those tables `sticky` forbids a page break between
// the two — otherwise an entry can strand its header alone at the foot of a
// page (the IoT Working Group entry did exactly that).
//
// Scoped to the entry-based sections on purpose: skills.typ is also built from
// tables, and making those sticky would chain every skill row to the next and
// drag the whole section onto one page.
#let keep-header-with-body(body) = {
  show table: it => block(sticky: true, it)
  body
}

#include "shared/summary.typ"
#keep-header-with-body(include "shared/professional.typ")
#include "shared/skills.typ"
#keep-header-with-body(include "shared/projects.typ")
#keep-header-with-body(include "shared/education.typ")
#keep-header-with-body(include "shared/teaching.typ")

// Optional sections — uncomment to include.
// #include "shared/honors.typ"
// #include "shared/certificates.typ"
