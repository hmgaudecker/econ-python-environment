.. _additional_python_libraries:

Additional Python libraries
=============================

In order to obtain a recent development version of `statsmodels <http://statsmodels.sourceforge.net/>`_, type::

    conda update -c https://conda.binstar.org/statsmodels statsmodels

We also need to install a couple of more libraries. Type::

    conda install coverage
    pip install sphinxcontrib-bibtex

.. note::

    **Students who only follow the Microeconometrics class are done now and should test their environment using the following steps.**

    Test whether everything installed correctly by typing in a command prompt::

        ipython notebook

    Your default browser should fire up. If you get a ``UnicodeDecodeError``, most likely your computer name contains special characters. Assuming you are on Windows, do the following:

        * Type sysdm.cpl into the start menu search box
        * Change your computer name to pure ASCII characters
        * Restart

    Click on "New notebook" and type::

        import sys
        sys.version

    followed by "Shift + Enter". It should say::

        '3.4.1 |Anaconda ... '

    If it does not, you need to modify your path settings, moving Anaconda first.

    Then type::

        import statsmodels as sm

    If no error occurred, you are done!


.. raw:: latex

    \clearpage
