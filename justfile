# show available recipes
default:
    @just --list

# build both variants
build: spain iran

# spain variant → build/parham-spain.pdf
spain:
    @mkdir -p build
    typst compile src/cv.typ build/parham-spain.pdf --input profile=spain --font-path fonts

# iran variant → build/parham-iran.pdf
iran:
    @mkdir -p build
    typst compile src/cv.typ build/parham-iran.pdf --input profile=iran --font-path fonts

# cover letter → build/parham-<name>-cover-letter.pdf (e.g. `just letter synadia`)
# --root src: letters live one level deeper than cv.typ and read the profile
# metadata from ../profile_<region>/, which escapes the default sandbox
# (the directory of the entry file).
letter name:
    @mkdir -p build
    typst compile src/letters/{{name}}.typ build/parham-{{name}}-cover-letter.pdf --root src --font-path fonts

# list the cover letters available to `just letter`
letters:
    @ls src/letters/*.typ | xargs -n1 basename | sed 's/\.typ$//'

# rebuild a variant on save (profile is required, e.g. `just watch spain`)
watch profile:
    @mkdir -p build
    typst watch src/cv.typ build/parham-{{profile}}.pdf --input profile={{profile}} --font-path fonts

# remove build artifacts
clean:
    rm -rf build
