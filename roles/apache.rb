name 'apache2'

run_list(
	 "recipe[mysql::client]",
	 "recipe[other]",
	 "recipe[apache2]"
)
