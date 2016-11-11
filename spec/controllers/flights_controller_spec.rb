require 'rails_helper'

RSpec.describe FlightsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  context "search for flight" do

    it "returns a match" do
    end
  end

end
