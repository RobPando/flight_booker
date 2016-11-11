require 'rails_helper'

RSpec.describe FlightsController do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    context "search for flight" do

      before :each do
        @flight = create(:flight)
        get :index, params: { from: 1, to: 2 }
      end

      it "returns a match" do
        expect(response).to render_template(:index)
        expect(assigns(:flights).first.id).to eq @flight.id
      end
    end
  end

  describe "New #new" do
  end

  describe "Create #create" do
  end

end
