



directory "/etc/profile.d" do 
	mode "0755"
end

file "/etc/profile.d/fabric8.sh" do 
user "root"
group "root"
mode "0755"
content "export CAMEL_HOME=/usr/local/camel/fabric8-karaf-1.0.0.redhat-362"
action :create
end