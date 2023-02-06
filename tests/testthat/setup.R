tryCatch(
    neptune_init(),
    error = function(e) {
        neptune_install()
    }
)
