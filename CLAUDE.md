# CLAUDE.md — 1995parham.pdf

Parham Alvani's resume, written in Typst using the `@preview/brilliant-cv:4.0.1`
package.

## Build

```sh
just build          # both variants into build/
just spain          # build/parham-spain.pdf
just iran           # build/parham-iran.pdf
just watch spain    # live rebuild
```

A profile **must** be passed explicitly (`--input profile=spain|iran`); there is
no default and `src/cv.typ` panics without one. XCharter is vendored under
`fonts/` and passed via `--font-path fonts`; FontAwesome must be installed
system-wide (`brew install --cask font-fontawesome`).

## Cover letters

One file per application under `src/letters/`, built with `just letter <name>`
(`just letters` lists them). Each uses the package's `letter()` function and
reads a profile's `metadata.toml`, so name, accent colour, fonts, footer and ATS
keyword injection match the resume automatically.

Two things to know before adding one:

- The recipe passes `--root src`. Letters sit one level deeper than `cv.typ` and
  read `../profile_<region>/metadata.toml`, which escapes Typst's default
  sandbox (the entry file's own directory).
- Pass `sender-address` explicitly. `personal.info` has no `address` key —
  brilliant-cv looks up an icon per key and dies on one it does not know, so the
  postal address rides on `location` instead — and without `sender-address` the
  package prints its `"Your Address Here"` placeholder.

Letters are deliberately **not** built in CI or attached to releases — they are
per-application and shouldn't be published with the resume.

## Where the job search is tracked

This repository holds the **documents** — the resume and the cover letters. The *progress* of the search stays out: targets, application statuses, rejections, interview stages and who has been contacted, including out of commit messages and branch names.

Be aware of what the repository already reveals, though. The committed letters under `src/letters/` name the employers applied to — `synadia.typ` and `elastic.typ` are readable by anyone — and each is dated at build time. That is a deliberate trade for keeping letters beside the resume they must match, but it means the repository is not neutral about the search, and a letter to a current employer's competitor would be visible. Move letters to a private location if that ever matters more than the convenience.

Progress lives in the Obsidian vault at `~/org`, where everything is written down as it happens, committed and kept:

- `~/org/Tasks/Interview.md` — the cross-cutting record: permit questions, follow-ups owed, applications still to send, cover letters to write, what went out and when, what closed and why.
- `~/org/Tasks/Code Chorus.md` — interview stages, round by round, one section per company.
- `~/org/Companies/<Company>/` — company description and role description.
- `~/org/Spain/` — the residence permit, the immigration lawyer, and what the authorisation actually allows. This decides which employers are viable at all: the permit covers work for companies outside Spain, so a "Spain, remote" role hired through a Spanish entity or an EOR is a different case from a foreign employer.

When you add a letter under `src/letters/` here, add the matching task in `~/org/Tasks/Interview.md` in the same session, or the two drift and applications get sent twice. Read `~/org/Tasks/CLAUDE.md` before writing there — the vault has its own conventions and they win inside it.

## Layout

- `src/cv.typ` — entry point; selects a profile and includes the shared sections.
- `src/profile_<region>/metadata.toml` — **the only** per-region difference: the
  contact block. Everything else is shared, so the variants cannot drift.
- `src/shared/*.typ` — all section content. Editing these changes every variant.

The `spain` profile deliberately carries **no `phone` key** (no Spanish number
yet) and adds a `[personal.info.custom-visa]` line stating work authorization,
because non-EU candidates get screened out unless that is visible up front.

`cv.typ` wraps the entry-based sections in `keep-header-with-body`, a show rule
that marks brilliant-cv's header tables `sticky` so an entry cannot strand its
header alone at the foot of a page. It is applied per-section on purpose —
`skills.typ` is also table-built, and making those sticky would chain every skill
row to the next and drag the section onto one page. Wrap new entry-based sections
with it; leave tag-based ones bare.

In `projects.typ`, `society` is the **project name** and `title` is **where the
work came from** (`Freelance --- Upwork`, `Offerland`). That is inverted relative
to `professional.typ` and deliberate: `display_entry_society_first` renders
`society` bold above `title`, so this puts what was built in the heading and the
client in the subtitle. Keep new project entries consistent.

## Gotchas

- `cv-entry-continued` evaluates `date.fields().children` unconditionally, so a
  single-token date such as `[Spring 2020]` panics — a lone text run has no
  `children` field. Use a range containing `--`.
- The location column is only `date_width` (3.4cm) wide; longer strings wrap and
  push the date onto a third line.
- `letter()`'s `subject` is a plain string, not markup, so Typst's `---` → em-dash
  substitution does **not** apply and `---` renders literally. Type a real em dash
  there. Inside the letter body, `---` works as usual.
- The release workflow publishes the spain variant a second time as the stable
  name `parham.pdf`, which `1995parham.github.io` links to directly. Do not
  remove that asset without updating the site.

## The resume-qa agent

`.claude/agents/resume-qa.md` defines a read-only subagent that answers questions
about Parham's professional history strictly from `src/`. Use it for interview
prep, screening questions, checking whether a claim is backed by an actual
bullet, or drafting application answers.

It is deliberately constrained: it never invents facts, it separates evidenced
claims (in a bullet) from unevidenced ones (in `skills.typ` only) from invisible
ATS keywords (in `[inject]`), and it knows that `honors.typ` and
`certificates.typ` are commented out of `cv.typ` and therefore not published.

## Cross-repo alignment (important)

This repo is the **source of truth** for Parham's professional facts. Three
repos state the same information publicly and must agree:

| Repo | What it states |
|---|---|
| `1995parham.pdf` (here) | Full resume — authoritative |
| `1995parham.github.io` | `src/pages/index.astro`, `experience.astro`, `education.astro`, `projects.astro` |
| `1995parham` | GitHub profile README "About Me" |

When you change any of the following here, **update the other two repos in the
same session**: job titles, employer names, start/end dates, part-time or remote
labels, the headline/summary, location, or education. A recruiter reading the
resume and the site side by side will notice a contradiction, and a stale
"Present" on a past employer is the most damaging kind.
