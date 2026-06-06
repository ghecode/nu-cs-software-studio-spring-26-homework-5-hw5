Given("a todo exists with category {string}") do |category|
  Todo.create!(description: "A #{category} task", category: category)
end

When("I visit the todos page and filter by {string}") do |category|
  visit todos_path
  select category, from: "category_filter"
  click_button "Filter"
end

Then("I should see the {string} todo") do |category|
  within("#todos") { expect(page).to have_content(category) }
end

Then("I should not see the {string} todo") do |category|
  within("#todos") { expect(page).not_to have_content(category) }
end

Then("I should see no todos") do
  within("#todos") { expect(page).not_to have_css("div[id^='todo_']") }
end
