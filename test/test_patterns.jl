using Test
using Fcp.Core.Patterns
using FilePathsBase

@testset "Pattern Matching Tests" begin
    # Create a sample directory and file for testing
    mkpath("test")
    open("test/file.txt", "w") do f
        write(f, "This is a test file")
    end
    open("test/file.md", "w") do f
        write(f, "This is a markdown file")
    end

    @test Fcp.Core.Patterns.matches_pattern(PosixPath("test/file.txt"), "*.txt") == true
    @test Fcp.Core.Patterns.matches_pattern(PosixPath("test/file.md"), "*.txt") == false

    # Clean up the sample directory and file
    rm("test/file.txt")
    rm("test/file.md")
end
