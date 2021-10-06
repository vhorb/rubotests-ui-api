# frozen_string_literal: true

Given(/^connect to API$/) do
  api = RestClient.get('https://jsonplaceholder.typicode.com/')
  expect(api.code).to eq 200
end

When(/^call GET method for (.*)$/) do |endpoint|
  @get_response_json = JSON.parse(RestClient.get("https://jsonplaceholder.typicode.com#{endpoint}"))
end

Then(/^should receive response with (\d+) items$/) do |total|
  expect(@get_response_json.length).to eq total
end
