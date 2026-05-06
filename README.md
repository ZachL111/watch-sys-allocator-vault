# watch-sys-allocator-vault

`watch-sys-allocator-vault` explores systems programming with a small R codebase and local fixtures. The technical goal is to build an R toolkit that studies allocator behavior through framed sample traffic, with bounds and ordering tests and no production deployment claims.

## Why This Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how allocation pressure and guard slack should influence a review result.

## Watch Sys Allocator Vault Review Notes

The first comparison I would make is `allocation pressure` against `layout drift` because it shows where the rule is most opinionated.

## Capabilities

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/watch-sys-allocator-walkthrough.md` walks through the case spread.
- The R code includes a review path for `allocation pressure` and `layout drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The R addition stays small enough to inspect in one sitting.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The same command runs the local verification path. The highest-scoring domain case is `stale` at 211, which lands in `ship`. The most cautious case is `recovery` at 117, which lands in `watch`.

## Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
