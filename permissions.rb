execute 'Grant Tomcat Ownership' do
    command 'sudo chown -R tomcat:tomcat /opt/tomcat/'
    action :run
end

execute 'change execute permission on bin folder' do
    command 'sudo chmod -R u+x /opt/tomcat/bin'
    action :run
end
