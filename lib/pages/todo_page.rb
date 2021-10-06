# frozen_string_literal: true

class ToDoPage < SitePrism::Page
  element :input_todo, 'input.new-todo'
  element :list_item, 'div.view'
  element :todo_count, 'span.todo-count strong'
end
