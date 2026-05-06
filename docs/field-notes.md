# Field Notes

The useful part of this repository is the small rule set around allocation pressure and guard slack.

The domain cases cover `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`stale` is the strongest case at 211 on `allocation pressure`. `recovery` is the cautious anchor at 117 on `layout drift`.

The language-specific addition keeps the review model as simple analysis functions.
