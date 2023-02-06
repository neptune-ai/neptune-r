tryCatch(
    neptune_init(),
    error = function(e) {
        install.packages("reticulate")
        library(reticulate)
        install_miniconda()

        neptune_install()
    }
)
