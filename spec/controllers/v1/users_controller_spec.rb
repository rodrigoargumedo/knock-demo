require 'rails_helper'

RSpec.describe V1::UsersController, type: :controller do
  context 'GET #index' do
    before(:each) do
      get :index
    end
    it 'should display all users' do
      
    end
    it 'should respond with 200 OK status' do
      should respond_with 200
    end
    
  end
end
