# Fcp

[![Build Status](https://github.com/Luftalian/fcp/workflows/CI,%20Build,%20and%20Docs/badge.svg)](https://github.com/Luftalian/fcp/actions)

Fcp is a command-line tool written in Julia that provides a variety of file processing capabilities, such as concurrency-based copying, file pattern matching, and more. It is designed to be efficient, extensible, and simple to use for common file operations.

## Features

- **Concurrent File Operations**: Copy files efficiently with multithreading support.
- **Pattern Matching**: Match files using patterns for selective operations.
- **Modular Design**: Built with a modular structure for easy extension.

## Getting Started

### Prerequisites

- Julia v1.10 or newer
- [Git](https://git-scm.com/)

### Installation

To build and use `fcp` as a command-line tool, follow these steps:

1. Clone the repository:

   ```sh
   git clone https://github.com/Luftalian/fcp.git
   cd fcp
   ```

2. Install dependencies:

   ```sh
   julia --project -e 'using Pkg; Pkg.instantiate()'
   ```

3. Build the command-line application using `PackageCompiler`:

   ```sh
   julia --project -e 'using PackageCompiler; create_app(".", "fcp");'
   ```

4. Add the compiled application to your system's PATH:

   ```sh
   export PATH="$PATH:$(pwd)/fcp/bin"
   ```

5. Use `fcp`:

   ```sh
   fcp -h
   ```

## Usage

Once installed, you can use `fcp` to perform various file operations. Here are some examples:

```sh
# Copy all files from `source_directory` to `destination_directory`
fcp -r source_directory destination_directory
```

### Available Commands

- `-r`: Recursively copy files.
- `-v`: Enable verbose output.

For detailed usage, refer to the [documentation](https://luftalian.github.io/fcp).

## Building the Documentation

To build the documentation locally, run:

```sh
julia --project=docs -e 'using Documenter; include("docs/make.jl")'
```

The documentation will be generated in the `docs/build` directory.

## Running Tests

To run the test suite, use:

```sh
julia --project=. test/runtests.jl
```

This will execute all unit tests in the `test` directory to ensure that the application works correctly.

## Contributing

We welcome contributions! Here's how you can help:

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a pull request.

Please make sure your code passes the tests and follows the project's coding style.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Special thanks to all contributors who have made this project possible.
- Built with love and Julia programming language.

## Contact

If you have questions or suggestions, feel free to open an issue or contact the maintainer through [GitHub](https://github.com/Luftalian).
