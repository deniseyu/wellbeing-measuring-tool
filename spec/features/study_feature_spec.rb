require 'rails_helper'

feature 'Creating a new study' do

  context 'A user who is not logged in' do
    scenario 'Does not have a link to create a new study' do
      visit studies_path
      expect(page).not_to have_link 'New Study'
    end

    scenario 'Will be redirected to the login page' do
      visit new_study_path
      expect(current_path).to eq new_user_session_path
    end
  end

  context 'A user who is logged in' do
    before do
      user = User.create(email: 'user@test.com',
      password: 'asdfjkl;',
      password_confirmation: 'asdfjkl;')
      login_as user
      visit studies_path
    end

    scenario 'Can see a link to create a new study' do
      expect(page).to have_link 'New Study'
    end

    scenario 'Can navigate to the new study creation page' do
      click_link 'New Study'
      expect(current_path).to eq new_study_path
    end
  end

end
