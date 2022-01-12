# neptune-r

R interface for [Neptune](https://neptune.ai/), machine learning experiment tracking tool.

It lets you easily track:
* hyperparameters
* metrics
* performance charts and images
* model binaries

Everything is logged to Neptune and can be:
* organized
* visualized
* shared
* accessed

**Keep the knowledge in one place, organized and ready to be shared with anyone.**

![image](https://gist.githubusercontent.com/jakubczakon/f754769a39ea6b8fa9728ede49b9165c/raw/2f3a5577ac55595e8b9241d81a2de43a0fc663db/wiki.png)
![image](https://gist.githubusercontent.com/jakubczakon/f754769a39ea6b8fa9728ede49b9165c/raw/2a67f6ed1017d3f6a3dec6fe85d1727f3b41f533/neptune_quick_start.png)
![image](https://gist.githubusercontent.com/jakubczakon/f754769a39ea6b8fa9728ede49b9165c/raw/8aa4f35e29a2a5177e89a8ed5d1daa233b04b0b9/clf_report.png)
![image](https://gist.githubusercontent.com/jakubczakon/f754769a39ea6b8fa9728ede49b9165c/raw/8aa4f35e29a2a5177e89a8ed5d1daa233b04b0b9/ship_predictions.png)

# Getting started

### Register
Go to https://neptune.ai/ and sign up.

It is completely free for individuals and academic teams, and you can invite others to join your team!

### Get your API token
In order to start working with Neptune you need to get the API token first.
To do that, click on the `Get API Token` button on the top left.

![image](https://gist.githubusercontent.com/jakubczakon/f754769a39ea6b8fa9728ede49b9165c/raw/e3776e605fea1fd5377c3ec748ba87b71cd8ef12/get_api_token.png)

### Create your first project
Click on `Projects` and the `New project`. Choose a name for it and whether you want it public or private.

![image](https://gist.githubusercontent.com/jakubczakon/f754769a39ea6b8fa9728ede49b9165c/raw/e3776e605fea1fd5377c3ec748ba87b71cd8ef12/new_project.png)


### Invite others
Go to your project, click `Settings` and send invites!

![image](https://gist.githubusercontent.com/jakubczakon/f754769a39ea6b8fa9728ede49b9165c/raw/e3776e605fea1fd5377c3ec748ba87b71cd8ef12/invite.png)

### Start tracking your work
Neptune let's you track any information important to your experimentation process.

#### Install R package

Simply run:

```R
install.packages('neptune')
```

and

```R
install_neptune()
```
#### Set Neptune token

```R
set_neptune_token(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vdWkubmVwdHVuZS5haSIsImFwaV9rZXkiOiJiNzA2YmM4Zi03NmY5LTRjMmUtOTM5ZC00YmEwMzZmOTMyZTQifQ==')
```

#### Initialize Neptune
Toward the top of your script insert the following snippet.

```R
init_neptune(project_name = "common-r/quickstarts")
```

#### Create and stop the experiment
You can treat every piece of work that you want to record as an experiment.
Just create an experiment:

```R
create_experiment(name = 'my first experiment')
```
Do whatever you want and record it here!
Stop the experiment.

```R
stop_experiment()
```

#### Track hyperparameters
Making sure that all your hyperparameters are recorded is very important.
With Neptune, you can do that easily by passing `params` dictionary when creating the experiment.

```R
create_experiment(name = 'my-first-experiment',
                  params = list(metric='Accuracy', model='rf', 'cvFolds'=2),
)

```

#### Track metrics
It is super easy. Just log your metric to Neptune.

```R
log_metric('accuracy', 0.92)
```

#### Track result diagnostics
You can even log images to Neptune. Just save to the

```R
log_image(name = 'performance charts', filename = 'roc_auc.png')
log_image(name = 'performance charts', filename = 'confusion_matrix.png')
```

#### Track artifacts
You can save model weights and any other artifact that you created during your experiment.

```R
log_artifact(filename = 'model.Rdata')
```

**[Check the example project here](https://app.neptune.ai/o/shared/org/r-integration/experiments?viewId=817be69c-103e-11ea-9a39-42010a840083)**


# Getting help
If you get stuck, don't worry we are here to help.
The best order of communication is:

 * [neptune documentation](https://docs.neptune.ai/getting-started/getting-help.html#chat)
 * [github issues](https://github.com/neptune-ai/neptune-client/issues)
