"""Sphinx documentation configuration file."""

from datetime import datetime

from sphinx.builders.latex import LaTeXBuilder

LaTeXBuilder.supported_image_types = ["image/png", "image/pdf", "image/svg+xml"]

from ansys_sphinx_theme import (
    __version__,
    ansys_favicon,
    ansys_logo_black,
)

# Project information
project = "ansys_sphinx_theme"
copyright = f"(c) {datetime.now().year} ANSYS, Inc. All rights reserved"
author = "ANSYS, Inc."
release = version = "2023"

# use the default ansys logo
html_logo = ansys_logo_black
html_theme = "ansys_sphinx_theme"

html_context = {
    "github_user": "ansys",
    "github_repo": "scipyconf-2023",
    "github_version": "main",
    "doc_path": "doc/source",
}

# specify the location of your github repo
html_theme_options = {
    "github_url": "https://github.com/ansys/scipyconf-2023",
    "contact_mail": "pyansys.core@ansys.com",
    "additional_breadcrumbs": [
        ("PyAnsys", "https://docs.pyansys.com"),
    ],
}

html_short_title = html_title = "SciPyConf 2023"

# Sphinx extensions
extensions = [
    "numpydoc",
    "sphinx.ext.intersphinx",
    "sphinx_copybutton",
    "sphinx_design",
]

# Intersphinx mapping
intersphinx_mapping = {
    "python": ("https://docs.python.org/3", None),
}

# Favicon
html_favicon = ansys_favicon

# The suffix(es) of source filenames.
source_suffix = ".rst"

# The master toctree document.
master_doc = "index"
