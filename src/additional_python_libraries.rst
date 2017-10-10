.. _additional_python_libraries:

Additional Python libraries
=============================

.. In order to obtain a recent development version of `statsmodels <http://statsmodels.sourceforge.net/>`_, type::
.. 
..     conda update -c https://conda.anaconda.org/statsmodels statsmodels
.. 
.. If you need the bootstrap for your standard errors or you are going to estimate ARCH models, I recommend `Kevin Sheppard <http://www.kevinsheppard.com>`_'s `arch <https://github.com/bashtage/arch>`_ package::
.. 
..     conda install -c https://conda.anaconda.org/bashtage arch
.. 
.. The last time I checked, this only worked for Windows and Linux. Check https://github.com/bashtage/arch for other options.
.. 
.. Note that the bootstrap implementation is by no means specific to ARCH models. For completenes, here are links to `documentation <http://arch.readthedocs.org/en/latest/bootstrap/background.html>`_ and `examples <http://nbviewer.ipython.org/github/bashtage/arch/blob/master/examples/bootstrap_examples.ipynb>`_.

The Anaconda Python distribution is fairly complete by now -- this page used to be much, much longer... However, there is one more library that I make heavy use of. Type::

    pip install sphinxcontrib-bibtex

.. raw:: latex

    \clearpage
