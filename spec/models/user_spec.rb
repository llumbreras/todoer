require 'spec_helper'

describe User, '#todos' do 
	it 'returns only todos for that user' do
		Todo.create(description: 'Buy a book')
		user = User.new('person@example.com')
		expect(user.todos.count).to eq 1
		expect(user.todos.first.description).to eq 'Buy a book'
		expect(user.todos).to eq Todo.all
	end
end

describe User, '#email' do
	it 'returns the email the user was instantiated with' do
		user = User.new('person@example.com')
		expect(user.email).to eq 'person@example.com'
	end
end
