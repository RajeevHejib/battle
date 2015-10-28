# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature 'Attacking' do
  scenario 'Player 2 is attacked' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Rajeev attacked Julien'
  end
end
