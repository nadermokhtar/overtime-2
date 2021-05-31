require 'rails_helper'

RSpec.describe User, type: :model do
  define 'Creation' do
    before do
      @user =  User.create(
        first_name:'john',
        last_name:'dummy',
        email:'dummy@test.com',
        password:'asdf',
        password_confirmation:'asdf')
    end

    it 'creates a user given the right arguments' do
      expect(@user).to be_valid
    end

    it 'cannot be created withou' do
      user.first_name = nil
      user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
