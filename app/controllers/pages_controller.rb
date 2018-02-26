class PagesController < ApplicationController
  def index
    @pages = Page.all  #this makes instance variable, that shows alll pages
  end

  #Get /pages/:id
  def show
    @page = Page.find(params[:id])
  end

  #Get /pages/new    requests a form to fill out, to create new
  def new
    @page = Page.new
  end

  #POST /pages
  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to page_path(@page)  #if saves successfully, rout to page/page
    else
      render :new  #else, rerender page.new
    end
  end

  private
    def page_params
      params.require(:page).permit(:body, :author, :title)
    end


end
