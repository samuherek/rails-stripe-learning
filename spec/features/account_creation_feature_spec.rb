require 'spec_helper'

describe 'account creation' do
    it 'allows users to create an account' do
        visit root_path
        click_link 'Create account'

        fill_in 'Name', with: 'Ryan'
        fill_in 'Email', with: 'ryan@emial.com'
        fill_in 'Password', with: 'password'
        fill_in 'Password Confirmation', with: 'password'

        click_button 'Create account'

        expect(page).to have_content('Signed up successfully')
    end
end
