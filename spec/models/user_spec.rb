require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'is valid with all valid attributes' do
     
      params = {
        
      first_name: 'dev',
      last_name: 'sherly',
      email: 'dev@sherly',
      password: '123',
      password_confirmation: '123'
    }
    expect(User.new(params)).to be_valid
    end

    it 'should have a first name' do
     
      params = {
      last_name: 'sherly',
      email: 'dev@sherly',
      password: '123',
      password_confirmation: '123'
    }
    expect(User.new(params)).to_not be_valid
    end

    it 'is not valid if the password is less than 3 characters' do
     
      params = {
        
      first_name: 'dev',
      last_name: 'sherly',
      email: 'dev@sherly',
      password: '12',
      password_confirmation: '12'
    }
    expect(User.new(params)).to_not be_valid
    end

    it 'is not valid if the password and password confirmation do not match' do
     
      params = {
        
      first_name: 'dev',
      last_name: 'sherly',
      email: 'dev@sherly',
      password: '124',
      password_confirmation: '1234'
    }
    expect(User.new(params)).to_not be_valid
    end

    it 'should not create an user without unique email' do
     
      @user1 = User.create(
        first_name: 'Reva',
        last_name: 'Simon',
        email: 'reva@simon@g.com',
        password: '123',
        password_confirmation: '123'
      )
      @user2 = User.create(
        first_name: 'David',
        last_name: 'Simon',
        email: 'reva@simon@g.com',
        password: '123',
        password_confirmation: '123'
      )
    expect(@user2).to_not be_valid
    end

    describe '.authenticate_with_credentials' do
      it 'checks the login and returns the user' do
        user = User.create(
          first_name: 'Reva',
          last_name: 'Simon',
          email: 'reva@simon@g.com',
          password: '123',
          password_confirmation: '123'
        )
        authenticate = User.authenticate_with_credentials(user.email, user.password)
        expect(authenticate).to_not be_valid
      end
    end

  end
end
