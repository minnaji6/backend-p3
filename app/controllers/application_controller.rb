class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here


  get "/habits" do
    habit = Habit.all
    habit.to_json
  end

  
  get "/todos" do
    todos = Todo.all
    todos.to_json(include: { habit: {only: [:habit]} })
  end

  post "/todos" do
    todo = Todo.create(item: params[:item],
      habit_id: params[:habit_id])
    todo.to_json(include: {habit: {only: [:habit]}})
  end

  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end

  get "/todos/:id" do
    todos = Todo.find(params[:id])
    todos.to_json(include: {habit: {only: [:habit]}})
  end

  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(item: params[:item],
      habit_id: params[:habit_id])
    todo.to_json(include: {habit: {only: [:habit]}})
  end


end
