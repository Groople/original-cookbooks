include_recipe 'deploy'

node[:deploy].each do |application, deploy|

  if deploy[:slug_name] != 'prerender'
    Chef::Log.debug("Skipping deploy::prerender application #{application} as it is not a the Prerender app")
    next
  end

  opsworks_deploy_dir do
    user deploy[:user]
    group deploy[:group]
    path deploy[:deploy_to]
  end

  opsworks_deploy do
    deploy_data deploy
    app application
  end
end
