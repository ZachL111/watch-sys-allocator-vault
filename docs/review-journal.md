# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its systems programming focus without claiming live deployment or external usage.

## Cases

- `baseline`: `allocation pressure`, score 167, lane `ship`
- `stress`: `dirty state`, score 164, lane `ship`
- `edge`: `guard slack`, score 199, lane `ship`
- `recovery`: `layout drift`, score 117, lane `watch`
- `stale`: `allocation pressure`, score 211, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
