.. _python:

Anaconda Python Distribution
==============================

Anaconda is a pre-packaged Python distribution for scientific users. [#]_ 

Direct your browser to https://www.continuum.io/downloads and download the **Python 3** Graphical Installer for your machine. Then follow the steps described there. [#]_ 


.. rubric:: Footnotes

.. [#] Python itself installs easily on all systems. It is not geared towards a specific userbase and the scientific tools need to be installed---as libraries---on top of it. This is the tricky part because most of these tools are **wrappers** around fast, battle-tested Fortran or C libraries which you won't have on your machine. So the machine-readable code has to be compiled (=generated) on a machine where these libraries are available; luckily the ContinuumIO team has done that already -- thanks!!! This was a pain in the \*\*\* in the old days.

.. [#] There is no graphical installer for Linux. However, if you can't handle the commands described for the Linux command line installer, you are probably using the wrong operating system.