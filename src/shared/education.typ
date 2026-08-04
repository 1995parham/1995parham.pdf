#import "@preview/brilliant-cv:4.0.1": (
  cv-entry-continued, cv-entry-start, cv-section,
)

#cv-section("Education")

#cv-entry-start(
  society: [Amirkabir University of Technology],
  location: [Tehran, Iran],
)

// GPAs are reported on the Spanish 0--10 scale first (the original Iranian
// 0--20 marks halved), since 17.34/20 does not read as strong to a European
// reviewer. 9.0+ maps to Sobresaliente, 7.0--8.9 to Notable.
#cv-entry-continued(
  title: [Ph.D. in Computer Network],
  date: [2019 -- 2024],
  description: list([GPA: 8.67/10 (17.34/20 national scale)]),
)

#cv-entry-continued(
  title: [M.Sc. in Computer Network],
  date: [2017 -- 2019],
  description: list([GPA: 9.39/10 (18.77/20) --- Sobresaliente]),
)

#cv-entry-continued(
  title: [B.Sc. in Computer Software Engineering],
  date: [2013 -- 2017],
  description: list([GPA: 9.47/10 (18.94/20) --- Sobresaliente]),
)
