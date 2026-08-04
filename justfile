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

# rebuild a variant on save (profile is required, e.g. `just watch spain`)
watch profile:
    @mkdir -p build
    typst watch src/cv.typ build/parham-{{profile}}.pdf --input profile={{profile}} --font-path fonts

# remove build artifacts
clean:
    rm -rf build
