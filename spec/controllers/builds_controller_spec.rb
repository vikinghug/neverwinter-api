require 'rails_helper'

RSpec.describe BuildsController, type: :controller do
  let(:build) { create :build }
  it "GETs index" do
    get :index
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "GETs show/:id" do
    get :show, id: build.id
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end


  it "GETs new" do
    get :new
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "creates a Build" do
    build_params = FactoryGirl.attributes_for(:build)
    expect{ post :create, build: build_params }.to change(Build, :count).by(1)
  end
end
