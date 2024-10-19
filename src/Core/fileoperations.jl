module FileOperations

using FilePathsBase: AbstractPath, cp, basename, dirname, mkpath, joinpath
using ..Logging
using ..Patterns

export copy_file

function copy_file(src::AbstractPath, dest::AbstractPath, pattern::String, logger)
    if !Patterns.matches_pattern(src, pattern)
        return
    end

    src_dirname = basename(dirname(src))
    src_basename = basename(src)
    new_filename = src_dirname * "-" * src_basename
    dest_file = joinpath(dest, new_filename)  # Use joinpath to concatenate paths

    Logging.log_info(logger, "Copying '$src' to '$dest_file'")

    cp(src, dest_file; force=true)
end

end # module FileOperations
