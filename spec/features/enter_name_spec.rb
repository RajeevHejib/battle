require './app'
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
describe Battle do
  before(:each) do
    visit('/')
    fill_in(:player_1_name, with: 'Rajeev')
    fill_in(:player_2_name, with: 'Julien')
    click_button('Submit')
  end

  feature 'Enter names' do
    scenario 'submitting names' do
      expect(page).to have_content 'Rajeev vs. Julien'
    end
  end

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points

  feature 'How close to winning?' do
    scenario 'see hit points' do
      expect(page).to have_content 'Julien: 60HP'
    end
  end

end
