require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:sponsored_post) { SponsoredPost.create!(title: "New Sponsored Post Title", body: "New Sponsored Post Body") }

  describe "attributes" do
# #2
    it "responds to title" do
      expect(sponsored_post).to respond_to(:title)
    end
# #3
    it "responds to body" do
      expect(sponsored_post).to respond_to(:body)
    end

    it "responds to price" do
      expect(sponsored_post).to respond_to(:price)
    end
  end
end
