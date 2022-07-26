user 'tomcat' do
    comment 'comment'
    home '/opt/tomcat'
    shell '/bin/false'
    action :create
end
