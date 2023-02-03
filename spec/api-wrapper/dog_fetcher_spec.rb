require 'rails_helper'

RSpec.describe "DogFetcher" do
  describe ".request" do
    context "when argument is 'woof.json' " do
      response = DogFetcher.request("woof.json")
      it { expect(response).to_not eq nil }
    end

    context "when argument is invalid" do
      it "raises error" do
        expect do
          DogFetcher.request("url")
        end.to raise_error JSON::ParserError
      end
    end
  end 
end
