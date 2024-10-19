# test_concurrency.jl

using Test
using Fcp.Core.Concurrency
using FilePathsBase
using Logging

@testset "Concurrency Tests" begin
    @test Fcp.Core.Concurrency.parallel_copy(Vector{AbstractPath}(), PosixPath("/tmp"), "*.txt", Logging.ConsoleLogger()) === nothing
end
