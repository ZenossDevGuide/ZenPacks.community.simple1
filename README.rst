==========================
ZenPacks.community.simple1
==========================


Description
===========
This ZenPack .......


Features
========

zenpacklib usage
----------------

This ZenPack is built with the zenpacklib library so does not have explicit code definitions for
device classes, device and component objects or zProperties.  Templates are also created through zenpacklib.
These elements are all created through the zenpack.yaml file in the main directory of the ZenPack.
See http://zenpacklib.zenoss.com/en/latest/index.html for more information on zenpacklib.

Note that if templates are changed in the zenpack.yaml file then when the ZenPack is reinstalled, the
existing templates will be renamed in the Zenoss ZODB database and the new template from the YAML file
will be installed; thus a backup is effectively taken.  Old templates should be deleted in the Zenoss GUI
when the new version is proven.


Device Classes
--------------

* /Server/Linux/Blah

Configuration Properties (zProperties)
--------------------------------------

* zBlah     string            default is 22222


Device and component object classes
-----------------------------------
* newDevice
* newComponent1

  - newSubComponentX

* newComponent2

where newDevice -> contains many newComponent1 components -> contains many newSubComponentX components.


Modeler Plugins
---------------


Datasources and Parsers
-----------------------


Monitoring Templates
--------------------

* Device templates

  - template1

* Component templates

  - template 2


Daemons
-------


Events
------


MIBs
----


Reports
-------


GUI modifications
-----------------

* The Overview display for a device in the /Server/Linux/Blah class has been extended in the
middle-upper panel to include 
* The component display for a newComponent1 has a dropdown menu to show all related newSubComponentX.  
The newSubComponentX component has a link back to its related newComponent1.

Usage
=====

There may be a large number of components for newDevice devices, each with a large number of
datapoints.  The cycle time of the templates is set at 300 seconds and it is strongly recommended
that this is not decreased.


Requirements & Dependencies
===========================

* Zenoss Versions Supported:  4.x
* External Dependencies: 

  - The zenpacklib package that this ZenPack is built on, requires PyYAML.  This is installed as standard with Zenoss 5 and with Zenoss 4 with SP457.  
    To test whether it is installed, as the zenoss user, enter the python environment and import yaml::

        python
        import yaml
        yaml

        <module 'yaml' from '/opt/zenoss/lib/python2.7/site-packages/PyYAML-3.11-py2.7-linux-x86_64.egg/yaml/__init__.py'>

    If pyYAML is not installed, install it, as the zenoss user, with::

        easy_install PyYAML

    and then rerun the test above.


* ZenPack Dependencies: 

  - PythonCollector >= 1.6

* Installation Notes: 

  - Restart zenoss entirely after installation

* Configuration: 

  - Add the blah modeler plugin to the /Server/Linux/Blah device class


Download
========
Download the appropriate package for your Zenoss version from the list
below.

* Zenoss 4.0+ `Latest Package for Python 2.7`_

ZenPack installation
======================

This ZenPack can be installed from the .egg file using either the GUI or the
zenpack command line. 

To install in development mode, find the repository on github and use the ZIP button
(right-hand margin) to download a tgz file and unpack it to a local directory, say,
/code/ZenPacks .  Install from /code/ZenPacks with::
  zenpack --link --install ZenPacks.community.simple1
  Restart zenoss after installation.

Device Support
==============

This ZenPack has been tested against 


Limitations and Troubleshooting
===============================



Change History
==============
* 1.0.0
   - Initial Release
* 1.0.1
   - dsplugins.py modified for performance improvements

Screenshots
===========

See the screenshots directory.


.. External References Below. Nothing Below This Line Should Be Rendered

.. _Latest Package for Python 2.7: https://github.com/jcurry/ZenPacks.community.simple1/blob/master/dist/ZenPacks.community.simple1-1.0.0-py2.7.egg?raw=true

Acknowledgements
================

This ZenPack has been developed with the help of ....

