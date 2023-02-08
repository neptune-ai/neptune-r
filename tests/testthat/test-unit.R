test_that("neptune_append and then neptune_fetch_values give the same result", {
    skip_on_cran()

    run <- neptune_init()

    values <- 1:20

    for (x in values) {
        neptune_append(run["values"], x)
    }
    neptune_wait(run)

    fetched <- neptune_fetch_values(run["values"])

    expect_equal(values, fetched$value)
})

test_that("$append and then neptune_fetch_values give the same result", {
    skip_on_cran()

    run <- neptune_init()

    values <- 1:20

    for (x in values) {
        run["values"]$append(x)
    }
    neptune_wait(run)

    fetched <- neptune_fetch_values(run["values"])

    expect_equal(values, fetched$value)
})

test_that("neptune_extend and then neptune_fetch_values give the same result", {
    skip_on_cran()

    run <- neptune_init()

    values <- 1:20
    neptune_extend(run["values"], values)
    neptune_wait(run)

    fetched <- neptune_fetch_values(run["values"])

    expect_equal(values, fetched$value)
})

test_that("$extend and then neptune_fetch_values give the same result", {
    skip_on_cran()

    run <- neptune_init()

    values <- 1:20
    run["values"]$extend(values)
    neptune_wait(run)

    fetched <- neptune_fetch_values(run["values"])

    expect_equal(values, fetched$value)
})

test_that("assign and then neptune_fetch give the same result", {
    skip_on_cran()

    run <- neptune_init()

    params <- list(
        "dense_units" = 128,
        "activation" = "relu",
        "dropout" = 0.23,
        "learning_rate" = 0.15,
        "batch_size" = 64,
        "n_epochs" = 30
    )
    run["parameters"] <- params

    neptune_wait(run)

    fetched <- neptune_fetch(run["parameters"])

    sorted <- function(lst) lst[sort(names(lst))]

    expect_equal(sorted(params), sorted(fetched))
})
