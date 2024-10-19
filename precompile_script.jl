using Fcp

# Set default arguments to pass to Fcp.main() during precompilation
ARGS = Dict(
    "source" => ["dummy_source_directory"],
    "destination" => ["dummy_destination_directory"],
    "--recursive" => true,
    "--verbose" => true
)

Fcp.main()
