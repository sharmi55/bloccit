require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question", body: "New Question Body", resolved: "True or False") }

  describe "attributes" do

    it "responds to title" do
      expect(question).to respond_to(:title)
    end
# #3
    it "responds to body" do
      expect(question).to respond_to(:body)
    end

    it "responds to resolved" do
      expect(question).to respond_to(:resolved)
    end
  end
end
