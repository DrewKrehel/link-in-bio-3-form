Rails.application.routes.draw do
  get("/", { :controller => "items", :action => "index" })
  get "/backdoor", to: "items#backdoor"
end
