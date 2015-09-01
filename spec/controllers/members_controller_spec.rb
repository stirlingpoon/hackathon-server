require 'rails_helper'
require 'db/seeds'

describe MembersController, type: :controller, :use_seed => true do

  describe "GET #index" do
    it "returns http success" do
      Seeds.generate
      get :index
      expect(response).to have_http_status(:success)

      expected = "{\"members\":[{\"id\":1,\"name\":\"John Smith\"},{\"id\":2,\"name\":\"Mike Johns\"},{\"id\":3,\"name\":\"Peter Stevens\"},{\"id\":4,\"name\":\"Sam Peters\"}]}"
      expect(response.body).to match(expected)
    end
  end

  # describe "POST #create" do
  #   it "returns http success" do
  #     post :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "GET #show" do
    it "returns http success" do
      Seeds.generate
      get :show, 1
      expected = "{\"member\": [ { \"id\": 1, \"name\": \"John Smith\" } ]}"
      # expect(JSON.parse(response.body)).to match(JSON.parse(expected))
      expect(response).to have_http_status(:success)
    end
  end

  # describe "PUT #update" do
  #   it "returns http success" do
  #     put :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #next" do
  #   it "returns http success" do
  #     get member_random_path
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
