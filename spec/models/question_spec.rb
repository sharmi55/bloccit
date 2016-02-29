require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: "New Question Resolved") }

  describe "attributes" do
    it "responds to title" do
        expect(question).to respond_to(:title)
    end

    it "reponds to body" do
      expect(question).to respond_to(:body)
    end

    it "responds to resolved" do
      expect(question).to respond_to(:resolved)
    end

  end
end
