include_attribute "apache2-windows"
include_attribute "mysql-windows"

default['core-lane']['windows']['dir'] = "C:/git"
default['core-lane']['windows']['branch'] = "version-1.3"
default['core-lane']['windows']['revision'] = "HEAD"
default['core-lane']['windows']['repo'] = "https://github.com/CORE-POS/IS4C.git"

default['core-lane']['windows']['db_user'] = 'corelane'
default['core-lane']['windows']['db_passwd'] = 'change_me'
default['core-lane']['windows']['opdata'] = 'opdata'
default['core-lane']['windows']['translog'] = 'translog'
default['core-lane']['windows']['db_driver'] = 'mysqli'
default['core-lane']['windows']['lane_id'] = '99'
