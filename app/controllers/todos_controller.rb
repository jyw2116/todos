class TodosController < ApplicationController
  def index
  	# @todos = Todo.where(owner_email: session[:current_email])
    @todos = current_user.todos
  end

  def new
  	@todo = Todo.new
  end

  def create
    current_user.todos.create params[:todo]
  	 # # Todo.create params[:todo]
    # Todo.new(params[:todo]) do |todo|
    #   todo.owner_email = current_email
    # end.save

  	redirect_to todos_path
  end
end
