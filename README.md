core-lane-windows Cookbook
==========================
  Cookbook for installing CORE lane in a Windows environment

Requirements

  git	CORE itself as well as couple other cookbooks install
        via git

  apache2-windows (via git) Apache 2.4 VC9
  
  php-windows (via git) PHP 5.4 VC9

  mysql-windows (via git) Temporary; upstream cookbook is broken

Usage
  core-lane-windows
  TODO: Write usage instructions for each cookbook.

  e.g.
  Just include `core-lane-windows` in your node's `run_list`:

  [code]
  {
    "name":"my_node",
    "run_list": [
      "recipe[core-lane-windows]"
    ]
  }
  [/code]

  Using Berkshelf to resolve the dependencies above may
  be helpful

License and Authors
  Authors: Andy Theuninck
