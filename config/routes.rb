Rails.application.routes.draw do
  get("/", { :controller => "items", :action => "index" })
  get "/backdoor", to: "items#backdoor"
  post "/insert_item", to: "items#insert"

  # resources :items do
  #   collection do
  #     delete :delete_all
  #   end
  # end

  delete "/items/:id", to: "items#destroy", as: :item
  delete "/items", to: "items#delete_all", as: :delete_all_items
end
