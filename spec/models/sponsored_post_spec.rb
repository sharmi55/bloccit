require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do

   let (:sponsored_post) {SponsoredPost.create!}

     describe "attributes" do

       it "responds to title" do
         expect(sponsored_post).to respond_to(:title)
       end

       it "responds to bopy" do
         expect(sponsored_post).to respond_to(:body)
      end

       it "responds to price" do
        expect(sponsored_post).to respond_to(:price)
       end
     end
  end
