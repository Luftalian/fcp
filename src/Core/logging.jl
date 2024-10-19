module Logging

using Logging

export configure_logger, log_info, log_error

function configure_logger(verbose::Bool)
    logger = verbose ? ConsoleLogger(stdout, Logging.Debug) : ConsoleLogger(stderr, Logging.Warn)
    global_logger(logger)
    return logger
end

function log_info(logger, msg::String)
    @info msg
end

function log_error(logger, msg::String)
    @error msg
end

end # module Logging
