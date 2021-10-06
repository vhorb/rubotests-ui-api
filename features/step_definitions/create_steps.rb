# frozen_string_literal: true

Given(/^go to TODO react site$/) do
  visit 'https://todomvc.com/examples/react/#/'
end

Then(/^total entries should equal (\d+)$/) do |total|
  page = ToDoPage.new
  expect(page.todo_count.text.to_i).to eq total
end

When(/^create (\d+) todo items$/) do |items|
  page = ToDoPage.new
  items.times do |n|
    page.input_todo.send_keys("todo item #{n}").send_keys(:enter)
  end
end
