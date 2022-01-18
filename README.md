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
install.packages('neptune')
```

and

```R
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

If you are running a script it will stop tracking automatically. However, in interactive environment such as RStudio you need to to stop it explicitely.

## Track metadata

### Log hyperparameters

### Log training metrics

### Log evaluation results

### Upload model file

# Getting help
If you get stuck, don't worry we are here to help:

 * [Neptune documentation](https://docs.neptune.ai)
 * [Chat with us](https://neptune.ai/?chat-with-us)
 * [GitHub Issues](https://github.com/neptune-ai/neptune-r/issues)
