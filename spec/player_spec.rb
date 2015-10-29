require 'player'

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
describe Player do
  subject(:player1) { Player.new("Rajeev") }
  subject(:player2) { Player.new("Hejib") }

  before :each do
    allow(Kernel).to receive(:rand).and_return 10
  end

  describe "name" do
    it "will return player's name" do
      expect(player1.name).to eq("Rajeev")
    end
  end

  describe "default hit points" do
    it "gives default hit points to a player" do
      expect(player1.hit_points).to eq(Player::DEFAULT_HIT_POINTS)
    end
  end

  describe "reduce points" do
    it "player 2's points reduced after attack" do
      player2.reduce_points
      expect(player2.hit_points).to eq(70)
    end
  end

end
