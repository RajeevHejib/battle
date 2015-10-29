# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature 'Attacking...' do
  before :each do
    allow(Kernel).to receive(:rand).and_return 10
  end
  scenario 'Player 2 is attacked' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Rajeev attacked Julien'
  end

  scenario "Player's trurn changes" do
    sign_in_and_play
    click_button('Attack')
    click_button('Next Turn')
    click_button('Attack')
    expect(page).to have_content "Rajeev's hit points reduced to: 70HP"
  end

end
