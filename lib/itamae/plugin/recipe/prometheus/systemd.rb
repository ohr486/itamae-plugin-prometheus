# --- SETTINGS ---

prometheus_version = node[:prometheus][:version]

# --- SYSTEMD ---

template "/etc/systemd/system/prometheus.service" do
  action :create
  source "templates/systemd/prometheus.service.erb"
  owner "root"
  group "root"
  mode "644"
  variables(prometheus_version: prometheus_version)
end
