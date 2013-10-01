require 'spec_helper'

feature 'Sign in as user' do 
	scenario 'with email address' do
		sign_in_as 'person@example.com'
		expect(page).to have_css '.welcome', text: 'Welcome, person@example.com'
	end
	
end