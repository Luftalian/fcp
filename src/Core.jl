module Core

# Include submodules in the correct order
include("Core/patterns.jl")
include("Core/logging.jl")
include("Core/fileoperations.jl")  # Make sure FileOperations is included before concurrency or copy
include("Core/concurrency.jl")
include("Core/copy.jl")

# Bring submodules into scope
using .Patterns
using .Logging
using .FileOperations
using .Concurrency
using .Copy

export run

# Define `run` function that calls `Copy.run`
function run(args, settings)
    # println("Running `run` function in `Core` module...")
    Copy.run(args, settings)
end

end # module Core
