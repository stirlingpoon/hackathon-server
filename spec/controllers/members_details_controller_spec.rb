require 'rails_helper'
require 'db/seeds'
require 'app/controllers/skills_controller'

describe SkillsController, type: :controller, :use_seed => true do

  describe "GET #index" do
    it "returns http success" do
      Seeds.generate

      get :index
      expect(response).to have_http_status(:success)
      expected = "  "
      expect(response.body).to match(expected)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create

      # expected = "{\"member\": [ { \"id\": 1, \"name\": \"John Smith\" } ]}"
      # expect(JSON.parse(response.body)).to match(JSON.parse(expected))
      expect(response).to have_http_status(:success)
    end
  end

end
