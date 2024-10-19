module Fcp

# Include submodules
include("CLI/parser.jl")
include("Core.jl")
include("Config/settings.jl")
include("Utils/helpers.jl")

# Bring modules into scope
using .CLI
using .Core
using .Config
using .Utils

# Exported functions
export main, julia_main

# Main function
function main()
    args = CLI.parse_arguments()
    settings = Config.load_settings(get(args, "config", nothing))
    Core.run(args, settings)
end

# julia_main function for compiled executable
function julia_main()::Cint
    try
        main()  # Call the main function to start the application
        return 0  # Return 0 to indicate success
    catch e
        @error "Application encountered an error" exception=e
        return 1  # Return 1 to indicate an error
    end
end

end # module Fcp
