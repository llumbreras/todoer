require 'spec_helper'

feature 'Sign in as user' do 
	scenario 'with email address' do
		visit root_path
		fill_in 'Email address', with: 'person@example.com'
		click_button 'Sign In'
		expect(page).to have_css '.welcome', text: 'Welcome, person@example.com'
	end
	
end