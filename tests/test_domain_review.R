source("R/domain_review.R")

item <- list(signal=67, slack=36, drag=26, confidence=75)
stopifnot(domain_review_score(item) == 167)
stopifnot(domain_review_lane(item) == "ship")
