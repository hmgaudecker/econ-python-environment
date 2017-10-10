.. _python:

Anaconda Python Distribution
==============================

Anaconda is a pre-packaged Python distribution for scientific users. [#]_  Direct your browser to https://www.anaconda.com/download and download the **Python 3** Graphical Installer for your machine. Then follow the steps described there. [#]_ 



.. note::

    **Students who only follow the Microeconometrics class are done now and should test their environment using the following steps.**

    Test whether everything installed correctly by typing in a command prompt::

        jupyter notebook

    Your default browser should fire up. If you get a ``UnicodeDecodeError``, most likely your computer name contains special characters. Assuming you are on Windows, do the following:

        * Type sysdm.cpl into the start menu search box
        * Change your computer name to pure ASCII characters
        * Restart

    Click on "New notebook" and type::

        import sys
        sys.version

    followed by "Shift + Enter". It should say something like::

        '3.6.2 |Continuum Analytics, Inc.

    If it does not, you need to modify your path settings, moving Anaconda first.

    Then type::

        import statsmodels as sm

    If no error occurred, you are done!




.. rubric:: Footnotes

.. [#] Python itself installs easily on all systems. It is not geared towards a specific userbase and the scientific tools need to be installed---as libraries---on top of it. This is the tricky part because most of these tools are **wrappers** around fast, battle-tested Fortran or C libraries which you won't have on your machine. So the machine-readable code has to be compiled (=generated) on a machine where these libraries are available; luckily the Anaconda team has done that already -- thanks!!! This was a pain in the \*\*\* in the old days.

.. [#] There is no graphical installer for Linux. However, if you can't handle the commands described for the Linux command line installer, you are probably using the wrong operating system.