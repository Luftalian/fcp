# Usage Examples

## Copying all text files recursively with verbose output

```bash
julia --project -e 'using Fcp; Fcp.main()' --recursive --verbose --pattern "*.txt" source_dir destination_dir
