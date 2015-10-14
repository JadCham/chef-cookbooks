node[:deploy].each do |application, deploy|
  script "symlink_storage" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}"
    code <<-EOH
    chmod -R 755 /current/storage
    mv current/storage/* shared
    rm -rf current/storage
    ln -s #{deploy[:deploy_to]}/shared #{deploy[:deploy_to]}/current/storage
    chown -h #{deploy[:user]}:#{deploy[:group]} #{deploy[:deploy_to]}/current/storage
    EOH
  end
end
