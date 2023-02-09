library("ggplot2")

test_that("End-to-end smoke test", {
  skip_on_cran()

  run <- neptune_init_run()

  params <- list(
    "dense_units" = 128,
    "activation" = "relu",
    "dropout" = 0.23,
    "learning_rate" = 0.15,
    "batch_size" = 64,
    "n_epochs" = 30
  )
  run["parameters"] <- params
  run["model/parameters/seed"] <- .Random.seed

  for (i in 1:1000) {
    random <- runif(1)
    neptune_log(run["neptune_log/random"], random)
    run["log/random"]$log(random)
  }

  p <- ggplot(mtcars, aes(mpg, wt)) +
    geom_point() +
    geom_smooth(method = lm)
  neptune_upload(run["ggplot"], p)

  test_dir <- tempdir()
  model_file_path <- paste0(test_dir, "/tmp.rda")

  fit <- lm(mpg ~ ., data = mtcars)
  save(fit, file = model_file_path)

  neptune_upload(run["neptune_upload/model"], model_file_path)
  run["upload/model"]$upload(model_file_path)

  neptune_stop(run)

  succeed()
})
