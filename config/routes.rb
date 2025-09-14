Rails.application.routes.draw do
  get("/", { :controller => "items", :action => "index" })
  get "/backdoor", to: "items#backdoor"
  post "/insert_item", to: "items#insert"
end
