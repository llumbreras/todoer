require 'spec_helper'

feature 'Manage todos' do 
	scenario 'Create a todo' do
		visit root_path

		fill_in 'Email address', with: 'person@example.com'
		click_button 'Sign In'

		click_link 'Add todo'
		fill_in 'Description', with: 'Buy a book'
		click_button 'Create todo'

		expect(page).to have_css 'li.todo', text: 'Buy a book'
	end
end