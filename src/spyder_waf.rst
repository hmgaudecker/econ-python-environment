.. _spyder_waf:

Setting up Spyder to debug your Waf files
=============================================

Associating wscript files with Spyder
______________________________________

.. note::
    https://code.google.com/p/spyderlib/issues/detail?id=638 could be a problem here. Temporarily renaming might be an option.

You can run your project from spyder by executing waf.py.


Debugging Waf from Spyder
_____________________________

Spyder will only let you start the debugger from files having a ``.py`` extension -- but the ``waf`` script typically does not have one. You can either make a copy of it and call it ``waf.py`` or just rename it. You can then start the debugger from ``waf.py`` and set breakpoints in the ``wscript`` files as you like.
