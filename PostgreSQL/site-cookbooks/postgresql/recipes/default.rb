package "postgresql" do
  action :install
end

package "postgresql-server" do
  action :install
end

execute "postgrosql-init" do
  command "service postgresql initdb"
end

service "postgresql" do
  action [:enable , :start]
end
