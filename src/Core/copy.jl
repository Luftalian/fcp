module Copy

using FilePathsBase: AbstractPath  # Import AbstractPath to use the Path type
using ..Patterns
using ..Logging
using ..FileOperations
using ..Concurrency

export run

function run(args, settings)
    # 必須の引数が提供されているか確認
    if !(haskey(args, "source") && haskey(args, "destination"))
        error("ソースとデスティネーションの両方のパスを提供してください。")
    end
    # println("Running `run` function in `Copy` module...")
    if isempty(args["source"])
        return
    end
    src = AbstractPath(args["source"][1])
    dest = AbstractPath(args["destination"][1])
    pattern = args["pattern"] !== nothing ? args["pattern"] : "*"  # Set default pattern to match all files
    verbose = args["verbose"] || settings.verbose

    # Configure logger
    logger = Logging.configure_logger(verbose)

    if isdir(src)
        if !args["recursive"]
            error("Source is a directory. Use -r or --recursive to copy directories.")
        end
        copy_directory(src, dest, pattern, logger)
    else
        FileOperations.copy_file(src, dest, pattern, logger)
    end
end


function copy_directory(src::AbstractPath, dest::AbstractPath, pattern::String, logger)
    files_to_copy = Concurrency.collect_files(src, pattern)
    Concurrency.parallel_copy(files_to_copy, dest, pattern, logger)
end

end # module Copy
