module Concurrency

using Base.Threads
using FilePathsBase: AbstractPath
using ..Patterns
using ..Logging
using ..FileOperations

export collect_files, parallel_copy

function collect_files(src::AbstractPath, pattern::String)
    files = AbstractPath[]
    for (root, _, files_in_dir) in walkdir(src)
        for file in files_in_dir
            src_file = AbstractPath(joinpath(root, file))
            if Patterns.matches_pattern(src_file, pattern)
                push!(files, src_file)
            end
        end
    end
    return files
end

function parallel_copy(files::Vector{AbstractPath}, dest::AbstractPath, pattern::String, logger)
    @threads for i in eachindex(files)
        file = files[i]
        relative_path = relpath(dirname(file), dirname(files[1]))
        dest_dir = joinpath(dest, relative_path)  # Use joinpath to combine paths
        mkpath(dest_dir)
        FileOperations.copy_file(file, dest_dir, pattern, logger)
    end
end


end # module Concurrency
