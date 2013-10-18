require 'spec_helper'

feature 'Manage todos' do 
	scenario 'Create a todo' do
		sign_in
		click_link 'Add todo'
		fill_in 'Description', with: 'Buy a book'
		click_button 'Create todo'

		expect(page).to have_css 'li.todo', text: 'Buy a book'
	end

	scenario 'View only my todo' do
		Todo.create(description:'Buy a pen', owner_email:'not_me@example.com')

		sign_in_as 'me@example.com'

		click_link "Add todo"
		fill_in 'Description', with: 'Buy a book'
		click_button 'Create todo'

		expect(page).to have_css 'li.todo', text: 'Buy a book'
		expect(page).not_to have_css 'li.todo', text: 'Buy a pen'
	end


end