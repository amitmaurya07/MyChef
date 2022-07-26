execute 'Reload the systemd daemon' do
    command 'sudo systemctl daemon-reload'
    action :run
    not_if { ::File.exist?('/home/ubuntu/Starttomcat') }
end

execute 'start the Tomcat service' do
    command 'sudo systemctl start tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/Starttomcat') }
end

execute 'enable Tomcat starting up' do
    command 'sudo systemctl enable tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/Starttomcat') }
end

file '/home/ubuntu/Starttomcat' do #for not executing give the file name of this.
    content 'content'
    mode '0755'
    action :create
end


