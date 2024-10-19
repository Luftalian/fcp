using Test
using Fcp.Core.Patterns
using FilePathsBase

@testset "Pattern Matching Tests" begin
    @test Patterns.matches_pattern(Path("example.txt"), "*.txt") == true
    @test Patterns.matches_pattern(Path("example.jpg"), "*.txt") == false
end
