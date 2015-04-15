here = File.absolute_path(File.dirname(__FILE__))

file_cache_path File.join(here, 'solo-cache')
cookbook_path [ File.absolute_path(File.join(here, '..')), File.join(here, 'berks-cookbooks') ]
