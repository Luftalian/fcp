# test_copy.jl

using Test
using Fcp.Core.Copy
using FilePathsBase
using Logging

@testset "Copy Tests" begin
    src = PosixPath("test_source_directory")
    dest = PosixPath("test_destination_directory")
    pattern = "*.txt"
    logger = Logging.ConsoleLogger()
    
    @test Fcp.Core.Copy.copy_directory(src, dest, pattern, logger) === nothing
end
