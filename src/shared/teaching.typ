#import "@preview/brilliant-cv:4.0.1": (
  cv-entry, cv-entry-continued, cv-entry-start, cv-section,
)

#cv-section("Teaching Experience")

// Grouped per institution (same cv-entry-start / cv-entry-continued pattern as
// professional.typ) so each university name is printed once instead of per
// course. Lecturing here was concurrent with full-time industry work.
#cv-entry-start(
  society: [Amirkabir University of Technology],
  location: [Tehran, Iran],
)

#cv-entry-continued(
  title: [Internet Engineering — Lecturer],
  date: [Fall 2020 -- Spring 2024],
  description: list(
    [Taught seven semesters of Internet Engineering covering web protocols, networking, and full-stack development.],
  ),
)

#cv-entry-continued(
  title: [Principles of Computer and Programming — Lecturer],
  date: [Spring 2020 -- Spring 2022],
  description: list(
    [Taught three semesters of Principles of Computer and Programming.],
  ),
)

#cv-entry-start(
  society: [Shahid Beheshti University],
  location: [Tehran, Iran],
)

// Both Shahid Beheshti courses share one entry. Beyond reading tighter, this
// avoids an upstream bug: cv-entry-continued evaluates date.fields().children
// unconditionally, which panics on a single-token date such as [Spring 2020]
// (a lone text run has no `children` field). Ranges containing `--` are fine.
#cv-entry-continued(
  title: [Web Engineering, Introduction to Programming — Lecturer],
  date: [Spring 2020 -- Spring 2021],
  description: list(
    [Taught Web Engineering for two semesters and Introduction to Programming for one.],
  ),
)

#cv-entry(
  title: [Workshops & Presentations],
  society: [Various venues],
  date: [2016 -- 2022],
  location: [Tehran, Iran],
  description: list(
    [*Workshops*: Intro to IoT Platforms (SSC IoT Summer Course, 2017); Advanced Python (SSC IoT Summer Course, 2017); Intro to Golang (8th Amirkabir Linux Festival, 2016).],
    [*Presentations*: Intro to IoT Platform (2nd Iran IoT Conference, 2017); NATS as a message broker (12th & 13th Amirkabir Linux Festival, 2021--2022); Linux Virtualization (11th & 13th Amirkabir Linux Festival, 2020--2022); Golang, The Future of C (9th Amirkabir Linux Festival, 2017).],
  ),
)
