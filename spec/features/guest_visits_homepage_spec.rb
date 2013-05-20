require 'spec_helper'

feature 'Guest visits homepage' do
  scenario 'learns about the application and its goals' do
    visit root_path
    expect(page).to have_css 'header [data-role="title"]', text: I18n.t('.page-title')
    expect(page).to have_css '[data-role="description"]'
    expect(page).to have_css 'form'
  end
end
