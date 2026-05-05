_default := "turkey"

# show available recipes
default:
    @just --list

# build all three variants (parham.pdf is the default = turkey)
build: main turkey iran

# default PDF — same as turkey but at build/parham.pdf
main:
    @mkdir -p build
    typst compile src/cv.typ build/parham.pdf --input profile=turkey

# turkey variant → build/parham-turkey.pdf
turkey:
    @mkdir -p build
    typst compile src/cv.typ build/parham-turkey.pdf --input profile=turkey

# iran variant → build/parham-iran.pdf
iran:
    @mkdir -p build
    typst compile src/cv.typ build/parham-iran.pdf --input profile=iran

# rebuild the default PDF on save
watch profile=_default:
    @mkdir -p build
    typst watch src/cv.typ build/parham.pdf --input profile={{profile}}

# remove build artifacts
clean:
    rm -rf build
