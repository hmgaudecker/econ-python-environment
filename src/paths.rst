.. _paths:

********************************************
Setting paths to other programs in the shell
********************************************

If you plan on using the project template with programs other than Python or R (Stata, Matlab, ...), you will need to add the respective executables to your path as well. Otherwise Waf will not be able to find these programs.


.. _windows:

Windows
=======

.. _win_shell:

Opening a shell on Windows
--------------------------

#. On **Windows XP**: Click on `Start`, select `run`, type ``cmd``. 
#. On later versions: Click on `Start`, type ``cmd`` in the search field.

   There is an even simpler way that saves you from changing to the right directory: In the Windows Explorer, right-click on the folder you want to go to (you must be in the right panel if you have the split-screen folder view) while holding down the shift key. You'll see an extra context-sensitive menu item there: Open Command Prompt here. Just click on this menu and a command window will open with the current working directory set to the folder's actual location.

If you have never used the command line before, check `this page <http://www.bleepingcomputer.com/tutorials/tutorial76.html>`_ for moving between directories, working with files, etc.


.. _win_path_permanent:

Making PATH settings permanent
------------------------------

You will need local administration rights for this again.

#. Right-click on Computer. Then go to "Properties" and select the tab "Advanced System settings". Choose "Environment Variables" and select "Path" from the list of system variables.
#. Choose "Edit" and **append** (i.e., do **not** overwrite the previous value):: 
    
        ;C:\Path\to\program.exe

   to the variable value -- make sure the rest remains as it is. Example for Stata: if your Stata executable is ``C:\Programme\Stata13\WSESTATA.EXE``, you should add ``;C:\Programme\Stata13`` to your path.

   Similarly for Matlab or the likes.
#. Click on **OK** as often as needed.


.. _macos:

MacOS (adjust slightly for Linux)
=================================


.. _macos_terminal:

Opening a Terminal
------------------

Open the program **Terminal** in the "Utilities" subfolder of your applications folder.

If you have never used the command line before, I recommend watching `this lecture <http://software-carpentry.org/4_0/shell/>`_ from the `Software Carpentry course <http://software-carpentry.org/4_0/>`_. 


.. _macos_path_permanent:

Making PATH settings permanent
------------------------------

You will need to add a line to the file ``.bash_profile`` and potentially create the file. This file lives in your home directory and it is hidden from your view by default, to toggle that setting that you can download a neat little `program <http://download.cnet.com/Show-Hidden-Files/3000-2383_4-75415396.html>`_.

**Linux users**: For most distributions, everything here applies to the file ``.bashrc`` instead of ``.bash_profile``.

I will now provide a step-by-step guide of how to create / adjust this file using a tiny editor called ``nano``, if you are familiar with editing text files, just use your editor of choice. 

#. Open a Terminal and type::

        nano ~/.bash_profile

   You will see something like the following:

   .. image:: macos_nano.png
       :width: 12cm

   If ``.bash_profile`` already existed, you will see some text at this point. If so, use the arrow keys to scroll all the way to the bottom of the file. 


#. Add the following line at the end of the file::

        export PATH="${PATH}:/path/to/program/inside/package"

   You will need to follow the same steps as before. Example for Stata::

        # Stata directory
        export PATH="${PATH}:/Applications/Stata/StataMP.app/Contents/MacOS/"
    
   In ``/Applications/Stata/StataMP.app``, you may need to replace bits and pieces as appropriate for your installation (e.g. you might not have StataMP but StataSE).

   Similarly for Matlab or the likes.

#. Press ``Return`` and then ``ctrl+o`` (= WriteOut = save) and ``Return`` once more.


#. Your default locale settings may conflict with some of the programs we'll need. If you want to be on the safe side, add these lines to your ``.bash_profile`` file::
   
        export LC_ALL=en_US.UTF-8
        export LANG=en_US.UTF-8
   
   (Hat tip to Matthias Bannert)
