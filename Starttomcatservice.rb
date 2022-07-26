cookbook_file '/etc/systemd/system/tomcat.service' do
    source 'mytomcatservice'
    mode '0755'
    action :create
end

