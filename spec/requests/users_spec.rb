require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /inndex" do
    it "returns http success" do
      get "/users/inndex"
      expect(response).to have_http_status(:success)
    end
  end

end
