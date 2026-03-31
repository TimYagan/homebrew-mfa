# Contributing to homebrew-mfa

Thanks for your interest in improving the Homebrew tap for [mfa](https://github.com/TimYagan/mac-file-analyzer)!

> **Note**: If you want to report a bug in `mfa` itself or request a new feature, please open an issue in the [mac-file-analyzer](https://github.com/TimYagan/mac-file-analyzer/issues) repo, not here. This repo is only for the Homebrew packaging.

## What belongs here

- Formula corrections (wrong URL, wrong sha256, broken build)
- Updating the formula to a new mfa release
- Improving tap-level documentation

## Reporting formula issues

Open a [GitHub issue](https://github.com/TimYagan/homebrew-mfa/issues) and include:

- macOS version and architecture (Intel or Apple Silicon)
- Output of `brew --version`
- The exact error you saw (paste the full terminal output)
- Output of `brew doctor`, if relevant

## Development setup

To work on the formula locally you need Homebrew installed:

```bash
brew --version
```

Clone the tap so Homebrew uses your local copy:

```bash
brew tap TimYagan/mfa /path/to/your/fork/homebrew-mfa
```

## Updating the formula to a new mfa release

1. Find the new release tarball URL and SHA-256:

   ```bash
   curl -sL https://github.com/TimYagan/mac-file-analyzer/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

   Or use the helper script included in this repo:

   ```bash
   bash example-get-sha256.sh vX.Y.Z
   ```

2. Edit `Formula/mfa.rb`:
   - Update `url` to the new tag URL.
   - Update `sha256` to the value computed above.
   - Update `version` if it is pinned explicitly.

3. Test the updated formula end-to-end:

   ```bash
   brew install --build-from-source Formula/mfa.rb
   brew test Formula/mfa.rb
   brew audit --strict Formula/mfa.rb
   ```

4. Add a `## [X.Y.Z]` entry to `CHANGELOG.md`.

5. Open a pull request against `main`. Include the mfa release link in the PR description.

## Submitting a pull request

1. Fork this repo and create a focused branch (e.g. `bump/v0.1.4`).
2. Make your changes (`Formula/mfa.rb` and `CHANGELOG.md` at minimum).
3. Verify locally with the three `brew` commands above.
4. Open a pull request against `main`.

## License

By contributing, you agree that your changes will be released under the [MIT License](LICENSE).
