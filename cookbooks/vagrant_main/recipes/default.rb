package "mysql-server" do
 action :install
end

require_recipe "copy_database_yml"
