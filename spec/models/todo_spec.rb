require "rails_helper"

RSpec.describe Todo, type: :model do
  describe ".with_category" do
    it "returns only todos in the selected category" do
      work_todo = Todo.create!(description: "Email boss", category: "work")
      Todo.create!(description: "Read book", category: "personal")

      result = Todo.with_category("work")

      expect(result).to include(work_todo)
      expect(result.count).to eq(1)
    end
  end
end