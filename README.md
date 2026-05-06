# watch-sys-allocator-vault

`watch-sys-allocator-vault` explores systems programming in R. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Watch Sys Allocator Vault Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Why This Exists

I use this kind of project to make a rule visible before adding more machinery around it. The important part here is not the size of the codebase. It is that the input signals, scoring rule, fixture data, and expected output can all be checked in one sitting.

## Code Tour

- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Feature Notes

- Includes extended examples for bounds checks, including `surge` and `degraded`.
- Documents low-level invariants tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Implementation Notes

The project is organized around a compact model rather than a large framework. Inputs are scored, classified, and checked against golden fixtures. The constants live in code and are mirrored in metadata so documentation drift is easy to catch. The R version keeps the model as simple functions over named lists for easy analysis use.

## Local Setup

Install R and run the commands from the repository root. The project does not need credentials or a hosted service.

## Example Scenarios

`boundary` is the first example I would inspect because it lands on the `review` path with a score of 46. The broader file also keeps `degraded` at -113 and `surge` at 151, which gives the model a useful low-to-high spread.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Roadmap

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more systems programming fixture that focuses on a malformed or borderline input.

## Boundaries

The scoring model is simple by design. More domain-specific behavior should be added through explicit adapters or extra fixture classes rather than hidden constants.
