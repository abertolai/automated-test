Before "@webservice" do
  auth = { :username => "inmetrics", :password => "automacao" }

  options = { :headers => { "Content-Type" => "application/json" },
              :basic_auth => auth }

  @webservice = Webservice.new(options)
end
