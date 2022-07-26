template '/opt/tomcat/conf/tomcat-users.xml' do
    source 'mytomcatuser.erb'
    mode '0755'
    action :create
end

template '/opt/tomcat/webapps/manager/META-INF/context.xml' do
    source 'mytomcatcontext.erb'
    mode '0755'
    action :create
end

template '/opt/tomcat/webapps/host-manager/META-INF/context.xml' do
    source 'mytomcathostcontext.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end
