module Config

export Settings, load_settings

# Define a struct for Settings
struct Settings
    pattern::String
    verbose::Bool
    config_path::Union{String, Nothing}
end

# Constructor that accepts keyword arguments
function Settings(; pattern::String = "", verbose::Bool = false, config_path::Union{String, Nothing} = nothing)
    return Settings(pattern, verbose, config_path)
end

# Function to load settings
function load_settings(config_path::Union{String, Nothing})
    if config_path === nothing
        # Return default settings
        return Settings()
    else
        # Load settings from config file (you would need to implement this part)
        # For now, just return default settings for simplicity
        return Settings(config_path=config_path)
    end
end

end # module Config
