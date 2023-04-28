def authentificate_test_user #(current_user)
  # Your code here

  user = User.find_by(email: 'testemail3@gmail.com')

  if user
    visit '/users/sign_in'
    fill_in 'Email*', with: user.email
    fill_in 'Password*', with: 'testPassword'
    click_button 'Log in'
  else
    # sign up
    user = User.create(name: 'testName', email: 'testemail3@gmail.com', password: 'testPassword', password_confirmation: 'testPassword')
    visit '/users/sign_up'
    fill_in 'Name*', with: 'testName'
    fill_in 'Email*', with: user.email
    fill_in 'Password*', with: 'testPassword'
    fill_in 'Password Confirmation*', with: 'testPassword'
    click_button 'Join Us Now !'
  end

  user
end

