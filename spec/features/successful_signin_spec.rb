describe ChitterApp do
  feature 'Successfully signin' do
    scenario 'User can enter their details and gaina access to the app' do
      User.new_user('littletrout', 'password1', 'littletrout@notadomain.com')

      visit '/'
      fill_in 'username', with: 'littletrout'
      fill_in 'password', with: 'password1'
      click_button 'Sign in'
      expect(page).to have_content('Hey, littletrout!')
    end
  end
end
