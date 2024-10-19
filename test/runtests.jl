# runtests.jl

using Test
using Fcp

@testset "Fcp.jl Tests" begin
    include("test_concurrency.jl")
    include("test_copy.jl")
    include("test_patterns.jl")
end
