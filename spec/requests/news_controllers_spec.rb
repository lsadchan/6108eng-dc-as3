require 'spec_helper'

describe "NewsControllers" do
  describe "GET /news_controllers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get news_controllers_path
      response.status.should be(200)
    end
  end
end
