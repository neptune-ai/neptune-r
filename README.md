<div align="center">
  <img src="https://neptune.ai/wp-content/uploads/neptune-logo-less-margin-e1611939742683.png" width="400" /><br><br>
</div>

# Neptune

[Neptune](https://neptune.ai/) is a metadata store for MLOps, built for teams that run a lot of experiments.

It gives you a single place to log, store, display, organize, compare, and query all your model-building metadata.

Neptune is used for:
* **Experiment tracking**: Log, display, organize, and compare ML experiments in a single place.
* **Model registry**: Version, store, manage, and query trained models, and model building metadata.
* **Monitoring ML runs live**: Record and monitor model training, evaluation, or production runs live

# Getting started

## Register
Go to https://neptune.ai/ and sign up.

You can use Neptune for free for work, research, and personal projects. All individual accounts are free within quota.

## Install Neptune R package

Simply run:

```R
install.packages("neptune")
```

and

```R
library("neptune")
neptune_install()
```

## Create a tracked run

```R
run <- neptune_init(project="MY_WORKSPACE/MY_PROJECT",
                    api_token="NEPTUNE_API_TOKEN")
```

This code creates a Run in the project of your choice. This will be your gateway to log metadata to Neptune. 

You need to pass your credentials (project and API token) to the `neptune_init()` method. You can also set the API token globally:

```R
neptune_set_api_token(token = "NEPTUNE_API_TOKEN")
```

### API token

To find your API token:
* Go to the Neptune UI
* Open the **User menu** toggle in the upper right
* Click **Get your API token**
* Copy your API token 

or [get your API token directly from here](https://app.neptune.ai/get_my_api_token).

### Project

The project argument has the format `WORKSPACE_NAME/PROJECT_NAME`.

To find it:
* Go to the Neptune UI 
* Go to your project 
* Open **Settings** > **Properties**
* Copy the project name

### Stop tracking

Once you are finished with tracking metadata you need to stop the tracking for that particular run:

```R
neptune_stop(run)

# Note that you can also use reticulate based syntax:
run$stop()
```

If you are running a script it will stop tracking automatically at the end. However, in interactive environment such as RStudio you need to to stop it explicitly.

## Track metadata

### Log hyperparameters

```R
params <- list(
  "dense_units"= 128,
  "activation"= "relu",
  "dropout"= 0.23,
  "learning_rate"= 0.15,
  "batch_size"= 64,
  "n_epochs"= 30
)
run["parameters"] <- params
```

If you have parameters in form of a dictionary you can log them to Neptune in batch. It will create a field with the appropriate type for each dictionary entry. 
You can update the hyperparameters or add new ones later in the code:

```R
# Add additional parameters 
run["model/parameters/seed"] <- RANDOM_SEED

# Update parameters e.g. after triggering an early stopping
run["model/parameters/n_epochs"] <- epoch
```

### Log training metrics

```R
for (i in 1:epochs) {
  [...] # My training loop
  neptune_log(run["train/epoch/loss"], loss)
  neptune_log(run["train/epoch/accuracy"], acc)
}

# Note that you can also use reticulate based syntax:
run["train/epoch/loss"]$log(loss)
```

You can log training metrics to Neptune using series fields. In Neptune there are three types of series - float series, string series, and file series. Each `neptune_log()` will add a new value at the end of the series. 

### Log evaluation results

```R
run["evaluation/accuracy"] <- eval_acc
run["evaluation/loss"] <- eval_loss
```

To log evaluation metrics simply assign them to a field of your choice. Using the snippet above, both evaluation metrics will be stored in the same evaluation namespace.

```R
neptune_upload(run["evaluation/ROC"], "roc.png")

# You can upload ggplot plots directly without saving them to a file
neptune_upload(run["evaluation/ROC"], ggplot_roc)

# If you want to control additional parameters like size of the plot you can pass the same arguments as to ggsave
neptune_upload(run["evaluation/ROC"], ggplot_roc, width=20, height=20, units="cm")

# Note that you can also use reticulate based syntax:
run["evaluation/ROC"]$upload("roc.png")
run["evaluation/ROC"]$upload(ggplot_roc)
```

You can log plots and charts easily using the `neptune_upload()` function. In the case of a ggplot object, it gets converted to an image file and uploaded, but you can also upload images from the local disc.

### Upload model file

You can upload any binary file (e.g. model weights) from disk using the `neptune_upload()` method. If your model is saved as multiple files you can upload a whole folder as a `FileSet` using `neptune_upload_files()`.

```R
# Upload a single fingle sile
neptune_upload(run["model"], "model.Rdata")

# You can also upload folders in batch if you don't need access to the separate files
neptune_upload_files(run["model"], "models")

# Note that you can also use reticulate based syntax:
run["model"]$upload("model.Rdata")
run["model"]$upload_files("models")
```

# Getting help
If you get stuck, don't worry we are here to help:

 * [Neptune documentation](https://docs.neptune.ai)
 * [Chat with us](https://neptune.ai/?chat-with-us)
 * [GitHub Issues](https://github.com/neptune-ai/neptune-r/issues)
