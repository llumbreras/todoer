require 'spec_helper'

describe User, '#todos' do 
	it 'returns todos owned by the user email' do
		create(:todo, description: 'Buy a book', owner_email: 'person@example.com')
		create(:todo, description: 'Buy a pen', owner_email: 'other_person@example.com')
		user = User.new('person@example.com')
		expect(user.todos.length).to eq 1
		expect(user.todos.first.description).to eq 'Buy a book'
		expect(user.todos).to eq Todo.where(owner_email: 'person@example.com')
	end
end

describe User, '#email' do
	it 'returns the email the user was instantiated with' do
		user = User.new('person@example.com')
		expect(user.email).to eq 'person@example.com'
	end
end
