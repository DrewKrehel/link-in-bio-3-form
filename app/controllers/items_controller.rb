class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor

    render({ :template => "item_templates/backdoor"})
  end

  def insert

    @new_link = Item.new

    @new_link.link_url = params[:query_link_url] 
    @new_link.link_description = params[:query_link_description]
    @new_link.thumbnail_url = params[:query_thumbnail_url] 

    @new_link.save

    redirect_to("/")
  end
end
