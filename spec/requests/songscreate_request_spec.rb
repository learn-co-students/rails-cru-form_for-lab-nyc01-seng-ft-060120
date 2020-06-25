require 'rails_helper'

RSpec.describe "Songscreates", type: :request do

  describe "GET /update" do
    it "returns http success" do
      get "/songscreate/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/songscreate/show"
      expect(response).to have_http_status(:success)
    end
  end

end
