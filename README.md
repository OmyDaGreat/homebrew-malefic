# Homebrew Malefic Tap

This Homebrew tap provides formulae for Malefic-related tools maintained by OmyDaGreat, including the mfc terminal application and Kommit.

Badges: (This tap) | (Homebrew)

## Quick start

Install the tap and the tools:

```bash
# Tap the repository (only needed once)
brew tap OmyDaGreat/malefic

# Install mfc
brew install mfc

# Install Kommit
brew install kommit

# Or install directly from the tap
brew install OmyDaGreat/malefic/mfc
brew install OmyDaGreat/malefic/kommit
```

## Formulae

- mfc — A multi-use general-purpose terminal application written in Kotlin.
- Kommit — (Repository: https://github.com/OmyDaGreat/Kommit) A tool included in this tap. See the upstream repository for detailed usage and release notes.

## Usage

After installation, run the tools from your terminal:

```bash
# run mfc (example)
mfc --help

# run Kommit (example)
kommit --help
```

See each project's upstream repository or the formula's caveats for more detailed usage notes.

## Updating

Formulae in this tap are updated automatically on new releases when maintainers publish updates upstream. To get the latest versions locally:

```bash
brew update
brew upgrade mfc
brew upgrade kommit
```

To upgrade everything installed from Homebrew:

```bash
brew upgrade
```

## Contributing

Contributions are welcome. If you want to add a new formula or update an existing one, please:

1. Fork this repository.
2. Add or update the formula in the Formula/ directory following Homebrew style guidelines.
3. Open a pull request with a clear description of the change and a link to the upstream release (if applicable).

Please follow Homebrew's best practices: use upstream release tarballs, include checksums, and avoid vendoring large dependencies.

## CI / Automation

Formula updates may be automated via CI when upstream projects create new releases. If you maintain one of the upstream projects and want it automatically updated here, include proper GitHub releases and tags in the upstream repository.

## License

This tap and the formulae in this repository are released under the MIT License. See the LICENSE file for details.

## Support

For issues with formulae in this tap, open an issue here. For bugs or feature requests for upstream projects (mfc, Kommit), please open issues in the respective upstream repositories:

- mfc: open an issue in the mfc repository (link in formula or project documentation)
- Kommit: https://github.com/OmyDaGreat/Kommit/issues
