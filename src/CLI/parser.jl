module CLI

using ArgParse

export parse_arguments

function parse_arguments()
    s = ArgParseSettings(description="Enhanced fcp command with advanced features.")

    @add_arg_table s begin
        ["--recursive", "-r"]
            help = "Copy directories recursively"
            action = :store_true

        ["--verbose", "-v"]
            help = "Enable verbose output"
            action = :store_true

        ["--pattern", "-p"]
            help = "File pattern to match (e.g., '*.txt')"
            arg_type = String

        ["--config", "-c"]
            help = "Path to configuration file"
            arg_type = String

        "source"
            help = "Source file or directory"
            arg_type = String
            nargs = 1

        "destination"
            help = "Destination directory"
            arg_type = String
            nargs = 1
    end

    return parse_args(s)
end

end # module
