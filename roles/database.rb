name "database"
description "mariadb servers"
run_list "role[base]", "recipe[mariadb]"

