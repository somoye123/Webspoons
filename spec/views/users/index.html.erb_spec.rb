require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             User.create!(
               name: 'Name',
               email: 'Email@gmail.com',
               title: 'Title',
               phone: 2,
               status: 'active'
             ),
             User.create!(
               name: 'Name',
               email: 'Email@yahoo.com',
               title: 'Title',
               phone: 2,
               status: 'inactive'
             )
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Email'.to_s, count: 2
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Status'.to_s, count: 2
  end
end
