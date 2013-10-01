require 'spec_helper'

feature 'Manage todos' do 
	scenario 'Create a todo' do
		sign_in
		click_link 'Add todo'
		fill_in 'Description', with: 'Buy a book'
		click_button 'Create todo'

		expect(page).to have_css 'li.todo', text: 'Buy a book'
	end
end