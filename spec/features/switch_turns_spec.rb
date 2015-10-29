# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature "players switch turns" do
    scenario "player2 has a turn after player1" do
      sign_in_and_play
      click_button('Attack')
      click_button('Next Turn')
      expect(page).to have_content("Julien's turn")    
    end

end
