remote_file '/home/ubuntu/apache-tomcat-10.0.20.tar.gz' do  #for handling remote files.
    source 'https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz'
    mode '0755'
    action :create
end

directory '/opt/tomcat' do
    mode '0755'
    action :create
end

execute 'Extract the Archive you downloaded' do
    command 'sudo tar xzvf /home/ubuntu/apache-tomcat-10.0.20.tar.gz -C /opt/tomcat --strip-components=1'
    action :run
    not_if { ::File.exist?('/opt/tomcat/LICENSE') }  #PROVIDING CONDITION TO EXCUTE ONLY ONCE  
end

