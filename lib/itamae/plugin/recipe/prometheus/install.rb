# --- SETTINGS ---

prometheus_version = node[:prometheus][:version]

directory "/usr/local/prometheus" do
  mode "0755"
  owner "root"
  group "root"
end

template "/etc/profile.d/prometheus.sh" do
  action :create
  source "templates/prometheus.sh.erb"
  owner "root"
  group "root"
  mode "644"
  variables(prometheus_version: prometheus_version)
end

# --- INSTALL ---

execute "# get prometheus tar" do
  not_if "test -e /usr/local/prometheus/prometheus_#{prometheus_version}.linux-amd64.tgz"
  cwd "/usr/local/prometheus"
  command "wget -q https://github.com/prometheus/prometheus/releases/download/v#{prometheus_version}/prometheus-#{prometheus_version}.linux-amd64.tar.gz"
end

execute "# unzip tar" do
  not_if "test -e /usr/local/prometheus/prometheus-#{prometheus_version}.linux-amd64"
  cwd "/usr/local/prometheus"
  command "tar xzvf prometheus-#{prometheus_version}.linux-amd64.tar.gz"
end
