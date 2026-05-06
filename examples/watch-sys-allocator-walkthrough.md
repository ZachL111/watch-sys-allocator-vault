# Watch Sys Allocator Vault Walkthrough

This note is the quickest way to read the extra review model in `watch-sys-allocator-vault`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 167 | ship |
| stress | dirty state | 164 | ship |
| edge | guard slack | 199 | ship |
| recovery | layout drift | 117 | watch |
| stale | allocation pressure | 211 | ship |

Start with `stale` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around dirty state and layout drift.
