require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'Post #create' do
    it do
      params = {
        user: {
          name: 'John',
          title: 'Doe',
          email: 'johndoe@example.com',
          phone: 0o0,
          status: 'tunde'
        }
      }
      should permit(:name, :title, :email, :phone, :status)
        .for(:create, params: params)
        .on(:user)
    end
  end
  describe 'before_action' do
    it { should use_before_action(:set_user) }
  end
end
