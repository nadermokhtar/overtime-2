require 'rails_helper'
describe 'naviagete'do
  describe 'post#index' do
    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it 'can be reached successfully' do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end
  end
end