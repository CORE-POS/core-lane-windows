name             'core-lane-windows'
maintainer       'Whole Foods Co-op'
maintainer_email 'andy@gohanman.com'
license          'Apache 2.0'
description      'Installs/Configures core-lane-windows'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "git"
depends "apache2-windows"
depends "mysql-windows"
depends "chef-php-windows"
depends "firefox"
depends "ms_dotnet45"
