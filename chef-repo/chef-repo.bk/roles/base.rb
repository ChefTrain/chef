name "base"
description "base server role"
run_list "recipe[motd]", "recipe[users]"
