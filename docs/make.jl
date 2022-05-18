
# TODO: remove this walkaround, if QEDbase is registered (or there is a better way to do that).
#using Pkg
#Pkg.add(path=joinpath(@__DIR__,".."))

#push!(LOAD_PATH,"../src/")

using Documenter
using QEDbase


#DocMeta.setdocmeta!(QEDbase, :DocTestSetup, :(using QEDbase); recursive=true)

using DocumenterCitations


bib = CitationBibliography(joinpath(@__DIR__,"Bibliography.bib"), sorting = :y)

pages = [
    "Home" => "index.md",
    "Dirac Tensors" => "dirac_tensors.md",
    "Lorentz Vectors" => "lorentz_vectors.md",
    "Four Momenta" => "four_momenta.md",
    "Library" => [
        "Contents" => "library/outline.md",
        "API" => "library/api.md",
        "Function index" => "library/function_index.md",
        ],
    "refs.md"
]


makedocs(bib;
    modules=[QEDbase],
    checkdocs = :exports,
    authors="Uwe Hernandez Acosta",
    repo="https://gitlab.hzdr.de/hernan68/QEDbase.jl/blob/{commit}{path}#{line}",
    sitename="QEDbase.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://hernan68.gitlab.io/QEDbase.jl",
        assets=String[],
    ),
    pages=pages,
)
