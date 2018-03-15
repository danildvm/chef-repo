name "mysql"
description "Configure host to run MySQL server."
run_list(
  "recipe[mysql::server]",
  "recipe[memcached]"
)
default_attributes(
  :mysql => {
    :bind_address => "0.0.0.0",
    :tunable => {
      :key_buffer => "384M",
      :table_cache => "4096",
    }
  }
)

