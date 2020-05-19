require 'rails_helper'

RSpec.describe 'As a User' do
  it 'I can search for members' do

    visit '/'

    select 'Gryffindor', :from => 'house'

    click_on 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content("21 Phoenix Members")

    within(first(".members")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
    end
  end
end
