name "web_server"
description "linux, apache2, php5.3.x"
run_list(
  "recipe[apt]",

  "recipe[php]",
  "recipe[php::module_apc]",
  "recipe[php::module_mysql]",
  "recipe[php::module_curl]",
  "recipe[php::module_memcache]",
  "recipe[php::module_gd]",

  "recipe[apache2]",
  "recipe[apache2::mod_php5]"
)