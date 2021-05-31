require 'rails_helper'
describe 'naviagete'do
  describe 'homepage' do
    it 'cane be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end
end