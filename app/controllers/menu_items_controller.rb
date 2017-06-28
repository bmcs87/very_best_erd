class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.page(params[:page]).per(10)

    render("menu_items/index.html.erb")
  end

  def show
    @menu_item = MenuItem.find(params[:id])

    render("menu_items/show.html.erb")
  end

  def new
    @menu_item = MenuItem.new

    render("menu_items/new.html.erb")
  end

  def create
    @menu_item = MenuItem.new

    @menu_item.dishes_id = params[:dishes_id]
    @menu_item.venues_id = params[:venues_id]
    @menu_item.favorites_id = params[:favorites_id]
    @menu_item.name = params[:name]
    @menu_item.calories = params[:calories]

    save_status = @menu_item.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/menu_items/new", "/create_menu_item"
        redirect_to("/menu_items")
      else
        redirect_back(:fallback_location => "/", :notice => "Menu item created successfully.")
      end
    else
      render("menu_items/new.html.erb")
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])

    render("menu_items/edit.html.erb")
  end

  def update
    @menu_item = MenuItem.find(params[:id])

    @menu_item.dishes_id = params[:dishes_id]
    @menu_item.venues_id = params[:venues_id]
    @menu_item.favorites_id = params[:favorites_id]
    @menu_item.name = params[:name]
    @menu_item.calories = params[:calories]

    save_status = @menu_item.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/menu_items/#{@menu_item.id}/edit", "/update_menu_item"
        redirect_to("/menu_items/#{@menu_item.id}", :notice => "Menu item updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Menu item updated successfully.")
      end
    else
      render("menu_items/edit.html.erb")
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])

    @menu_item.destroy

    if URI(request.referer).path == "/menu_items/#{@menu_item.id}"
      redirect_to("/", :notice => "Menu item deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Menu item deleted.")
    end
  end
end
