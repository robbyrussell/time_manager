require 'rails_helper'

describe 'the edit activity process' do

  it 'allows a user to edit the set activity of an hour' do
    hour = FactoryGirl.create(:hour)
    visit root_url
    click_link Day.first.date
    click_link 'Edit'
    fill_in 'Activity', :with => 'Bake Brownies'
    click_on 'Update Hour'
    expect(page).to have_content('Bake Brownies')
  end
end
