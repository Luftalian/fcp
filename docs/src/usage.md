# Usage Guide for Fcp.jl

This section provides a guide on how to use the Fcp.jl package for various file copying scenarios.

## Basic Command-Line Usage

To use Fcp from the command line, simply call the main function with appropriate options:

```sh
fcp [options] source destination
```

### Options

- `-r`, `--recursive`: Copy directories recursively.
- `-v`, `--verbose`: Enable verbose output to track the copying progress.
- `-p PATTERN`, `--pattern PATTERN`: Only copy files that match the specified pattern (e.g., `*.txt`).
- `-c CONFIG`, `--config CONFIG`: Path to a configuration file for additional settings.

### Examples

1. **Basic Copy**
   ```sh
   fcp source_directory destination_directory
   ```

2. **Recursive Copy**
   ```sh
   fcp -r source_directory destination_directory
   ```

3. **Copy Files Matching a Pattern**
   ```sh
   fcp -p "*.txt" source_directory destination_directory
   ```

### Using a Configuration File

You can use a configuration file to set default options for your copy commands. The configuration file should be in TOML format and can specify default patterns, verbosity, etc.
