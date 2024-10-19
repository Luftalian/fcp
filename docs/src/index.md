# Fcp.jl Documentation

Welcome to the documentation for **Fcp.jl**, a Julia package that provides advanced file copying capabilities with features such as parallel copying, configurable patterns, and more.

## Overview

Fcp.jl is designed to facilitate efficient copying of files and directories, offering additional features like recursive copying, filtering by patterns, and verbose output. Whether you're dealing with a large number of files or specific file types, Fcp.jl aims to simplify and speed up the process.

### Features

- **Parallel Copying**: Utilize multiple threads to copy files concurrently, reducing the time required for large copying tasks.
- **Pattern Matching**: Specify file patterns to include or exclude during the copying process.
- **Recursive Directory Copying**: Easily copy entire directory structures with an optional recursive flag.
- **Configurable Settings**: Use a configuration file to manage copying settings.

## Installation

To install Fcp.jl, add it to your Julia environment using the following command:

```julia
using Pkg
Pkg.add(url="https://github.com/Luftalian/fcp")
```

After installation, you need to compile the project to use it as a command-line tool. First, clone the repository:

```sh
git clone https://github.com/Luftalian/fcp.git
```

Navigate to the cloned directory:

```sh
cd fcp
```

Use the following command to compile the application:

```sh
julia --project -e 'using PackageCompiler; create_app(".", "fcp"; precompile_execution_file="precompile_script.jl")'
```

After compiling, set the `PATH` to use the compiled application:

```sh
export PATH="fcp/bin:$PATH"
```

You can now use Fcp as a command-line tool:

```sh
fcp -h
```

---

For detailed usage and API information, check out the [Usage](usage.md) and [API](api.md) sections.

For further questions or contributions, please check out the [repository](https://github.com/Luftalian/fcp).
