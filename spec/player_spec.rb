require 'player'

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
describe Player do
  subject(:player1) { Player.new("Rajeev") }
  subject(:player2) { Player.new("Hejib") }

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
      points_before = player2.hit_points
      player2.reduce_points
      points_after = player2.hit_points
      expect(points_before - points_after).to eq(10)
    end
  end

end
