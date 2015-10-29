# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'How close to winning?' do
  scenario 'see hit points' do
    sign_in_and_play
    expect(page).to have_content 'Julien: 80HP'
  end

  scenario 'see hit points' do
    sign_in_and_play
    expect(page).to have_content "Rajeev's turn"
  end

end
