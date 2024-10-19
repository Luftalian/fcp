module Patterns

using FilePathsBase: AbstractPath
using Glob

export matches_pattern

function matches_pattern(file::AbstractPath, pattern::String)
    # If the pattern is empty, consider it as matching all files
    if isempty(pattern)
        return true
    end

    # Use Glob to create a list of matching files
    # If the file is in the matched list, return true
    matched_files = Glob.glob(pattern, dirname(string(file)))
    return string(file) in matched_files
end

end # module Patterns
