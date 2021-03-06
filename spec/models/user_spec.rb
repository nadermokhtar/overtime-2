require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Creation' do
    before do
      @user = User.create(
        first_name: 'john',
        last_name: 'dummy',
        email: 'dummy@test.com',
        password: 'asdfasdf',
        password_confirmation: 'asdfasdf'
      )
    end
    it 'creates a user given the right arguments' do
      expect(@user).to be_valid
    end

    it 'cannot be created without first name and last name' do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
