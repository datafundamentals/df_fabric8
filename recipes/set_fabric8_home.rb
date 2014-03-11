



directory "/etc/profile.d" do 
	mode "0755"
end

file "/etc/profile.d/fabric8.sh" do 
user "root"
group "root"
mode "0755"
content "export FABRIC_HOME=/usr/local/fabric8/fabric8-karaf-1.0.0.redhat-362"
action :create
end