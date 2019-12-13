procdelays
==============================


Use Python 2.7.10

```bash
conda install python=2.7.10
```

To run the code use the following (until I learn the magic of virtualenvs)

```bash
export PYTHONPATH=$PYTHONPATH:$(pwd)/
python src/examples/processAlmaConAccJava.py data/interim/DV01-toy.txt
python src/examples/processAlmaConAccJava.py data/raw/ANTENNA/dv02-acsStartContainer_cppContainer_2017-07-12_16.28.50.242
```

Notebooks
------------

```bash
export PYTHONPATH=$PYTHONPATH:$(pwd)
jupyter-notebook --notebook-dir=notebooks
```

Paper
-----
* Notes on chapters: https://www.evernote.com/pub/jpgilcl/papertesisufro#st=p&n=7561d8ff-d4f2-4962-ab24-1cabbb53c6b9
* Latex: https://v2.overleaf.com/project/5af4b1eb97e21c26afd62240


Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.testrun.org

TODO
----
* Enable Makefile
* Upgrade to Python 3.6
* Enable requirements.txt
* Notebook dir per chapter

-------

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
