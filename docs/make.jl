using Pkg

# Activate the main project environment (which contains Fcp and Glob)
Pkg.activate(joinpath(@__DIR__, "..")) # Activate the parent directory's environment
Pkg.instantiate()

# Import Documenter and Fcp modules
using Documenter

# Add the path to Fcp to the LOAD_PATH
push!(LOAD_PATH, joinpath(@__DIR__, "../src"))

# Import the Fcp module
using Fcp

# Generate the documentation
makedocs(
    modules=[Fcp],
    format=Documenter.HTML(repolink="https://github.com/Luftalian/fcp"),
    sitename="Fcp.jl Documentation",
    # repo="https://github.com/yourusername/yourrepository",
    pages=[
        "Home" => "index.md",
        "Usage" => "usage.md",
        "API" => "api.md",
    ],
    remotes=nothing # Disable remotes since it's not in a Git repo
)
