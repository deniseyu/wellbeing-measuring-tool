require 'rails_helper'

feature 'A user navigating to the page' do
  scenario 'Is prompted to login or register' do
    visit '/'
  end
end
