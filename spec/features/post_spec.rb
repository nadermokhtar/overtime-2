require 'rails_helper'
describe 'naviagete'do
  describe 'index' do
    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it 'can be reached has the correct content' do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end
  end
  describe 'creation' do
    it 'can be reached successfully' do
      visit new_post_path
      expect(page.status_code).to eq(200)
    end
    it 'it can be created new form page' do
      visit new_post_path
      fill_in 'post[date]', with:Date.today
      fill_in 'post[rationale]', with:'some narly rationale'
      click_on 'Save'
      expect(page).to have_content(/some narly rationale/)
    end
  end

end