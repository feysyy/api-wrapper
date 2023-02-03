require 'rails_helper'

RSpec.describe "DuckFetcher" do
  describe ".request" do
    context "when argument is 'random' " do
      response = DuckFetcher.request("random")
      it { expect(response).to_not eq nil }
    end

    context "when argument is invalid" do
      it "raises error" do
        expect do
          DuckFetcher.request("url")
        end.to raise_error JSON::ParserError
      end
    end
  end 
end

