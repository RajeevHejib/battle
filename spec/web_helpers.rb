def sign_in_and_play
  visit('/')
  fill_in(:player_1_name, with: 'Rajeev')
  fill_in(:player_2_name, with: 'Julien')
  click_button('Submit')
end
