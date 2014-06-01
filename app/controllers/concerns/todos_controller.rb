class TodosController < ApplicationController
	def create
		todo_tmp = build_todo
		current_list = List.find(1)
		todo = current_list.todos.build(description: todo_tmp.description)
		todo.save
		redirect_to lists_path
	end

	def new
	end

	private

	def build_todo
		Todo.new(todo_parameters)
	end

	def todo_parameters
		params.require(:todo).permit(:description, :id, :list_id)
	end
end