bash "create FFCRM database" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code "rake db:create RAILS_ENV=production"
end

bash "bootstrap CRM data schema" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code "rake crm:setup RAILS_ENV=production"
end

bash "bootstrap CRM data" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code "rake crm:load RAILS_ENV=production"
end