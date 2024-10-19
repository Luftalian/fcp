# Fcp.jl API Reference

This section contains the API reference for the Fcp.jl package, detailing the available functions and their usage.

## Module Overview

Fcp.jl consists of several modules:

- **Fcp**: The main module that contains the primary `main()` function for executing the copy operations.
- **CLI**: Handles command-line argument parsing.
- **Core**: Contains the core logic for running the file copying operations.
- **Config**: Deals with loading and managing configuration settings.
- **Utils**: Provides utility functions used throughout the library.

### Main Function

#### `Fcp.main()`

- **Description**: The entry point for running Fcp from the command line.
- **Arguments**: None (relies on command-line arguments for configuration).
- **Usage**:
  ```julia
  Fcp.main()
  ```

### Config Module

#### `Config.load_settings(config_path::Union{String, Nothing})`

- **Description**: Loads the configuration settings from a file, if provided.
- **Arguments**:
  - `config_path`: Path to the configuration file.
- **Returns**: A `Settings` object containing the configuration.

### Core Module

#### `Core.run(args::Dict{String, Any}, settings::Config.Settings)`

- **Description**: Runs the main copying operations based on provided arguments and settings.
- **Arguments**:
  - `args`: A dictionary containing command-line arguments.
  - `settings`: The settings object containing configuration options.

#### `Core.parallel_copy(files::Vector{Path}, dest::Path, pattern::String, logger)`

- **Description**: Copies files in parallel to the destination.
- **Arguments**:
  - `files`: A vector of file paths to be copied.
  - `dest`: Destination directory path.
  - `pattern`: Pattern to filter files.
  - `logger`: Logger instance for verbose output.

### CLI Module

#### `CLI.parse_arguments()`

- **Description**: Parses command-line arguments.
- **Returns**: A dictionary of arguments parsed from the command line.

---

For further questions or contributions, please check out the [repository](https://github.com/Luftalian/fcp).
