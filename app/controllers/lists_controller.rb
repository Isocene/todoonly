class ListsController < ApplicationController
  def show
  	@list = List.find(params[:id])
  	@todo = Todo.new
  end

  def index
  	@lists = List.all
  end

  def new
  	@list = List.new
  end

  def create
  	list = build_list
  	list.save
  	redirect_to lists_path
  end

  private

  	def build_list
  		List.new(list_parameters)
  	end

  	def list_parameters
  		params.require(:list).permit(:name, :list_id)
  	end

end