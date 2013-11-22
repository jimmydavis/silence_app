require 'spec_helper'

describe LambsController do

  let(:lamb) { Lamb.create }

  # index
  describe 'GET #index' do
    before do
      get :index
    end

    it { should render_template(:index) }

    it "assigns all the lambs as @lambs" do
      lamb = Lamb.create
      get :index
      lambs_array = []
      lambs_array << lamb

      expect( assigns(:lambs) ).to match_array(lambs_array)
    end
  end

  # create
  describe 'POST #create' do

    context "when a new lamb is created" do
      let(:new_lamb) do
       {
        lamb: {}
        }
      end

      it { should respond_to format(:json) }

      it "redirects to the newly created lamb" do
        post :create, new_lamb
        expect(response).to redirect_to Lamb.last
      end

      it "creates a new lamb" do
        expect { post :create, new_lamb }.to change { Lamb.count }.by(1)
      end
    end
  end

  # show
  describe 'GET #show' do

    it "renders the show view" do
      get :show, id: lamb.id
      expect(response).to render_template :show
    end

    it "assigns each lamb as @lamb" do
      get :show, id: lamb.id
      expect( assigns(:lamb) ).to eq(lamb)
    end

  end
  # update
  # describe 'PUT #update' do

  # let(:lamb) { Lamb.create }

  #   it "renders the edit page" do
  #     put :update, id: lamb.id
  #     expect(response).to render_template(:edit)
  #   end

  # end



end
