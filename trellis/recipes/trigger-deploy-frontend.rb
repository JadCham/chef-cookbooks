Chef::Log.info("app-id [#{node[:instance]['backend_app_id']}]")
#bash 'Deploy-App' do
#    code <<-EOH
#        aws opsworks --region us-east-1 create-deployment --instance-ids "#{node[:instance]['id']}" --stack-id #{node[:instance]['stack_id']} --app-id #{node[:instance]['backend_app_id']}
#EOH

#end
