module Patterns

using FilePathsBase: AbstractPath, string
using Glob

export matches_pattern

function matches_pattern(file::AbstractPath, pattern::String)
    # If the pattern is empty, consider it as matching all files
    if isempty(pattern)
        return true
    end

    # Convert the file path to string
    file_str = string(file)

    # Use Glob to create a list of matching files in the file's directory
    matched_files = Glob.glob(pattern, dirname(file_str))
    return file_str in matched_files
end

end # module Patterns
