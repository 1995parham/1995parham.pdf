# show available recipes
default:
    @just --list

# build both variants
build: turkey iran

# turkey variant → build/parham-turkey.pdf
turkey:
    @mkdir -p build
    typst compile src/cv.typ build/parham-turkey.pdf --input profile=turkey --font-path fonts

# iran variant → build/parham-iran.pdf
iran:
    @mkdir -p build
    typst compile src/cv.typ build/parham-iran.pdf --input profile=iran --font-path fonts

# rebuild a variant on save (profile is required, e.g. `just watch turkey`)
watch profile:
    @mkdir -p build
    typst watch src/cv.typ build/parham-{{profile}}.pdf --input profile={{profile}} --font-path fonts

# remove build artifacts
clean:
    rm -rf build
