default["apache"]["sites"]["arunakalla2"] = {"site_title" => "This is Arunakalla2s site", "port" => 80, "domain" => "arunakalla2.mylabserver.com" }
default["apache"]["sites"]["arunakalla2b"] = {"site_title" => "This is Arunakalla2bs site", "port" => 80, "domain" => "arunakalla2b.mylabserver.com" }
default["apache"]["sites"]["arunakalla3"] = {"site_title" => "This is Arunakalla3s site", "port" => 80, "domain" => "arunakalla3.mylabserver.com" }

case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end
