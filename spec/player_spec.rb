require 'player'

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
describe Player do
  describe "#name" do
    subject(:player) { Player.new("Rajeev") }
    it "will return name" do
      expect(player.name).to eq("Rajeev")
    end
    it "gives default HP to player" do
      expect(player.hit_points).to eq(Player::DEFAULT_HIT_POINTS)
    end

    it "hp points reduce when player attacked" do
      points_before=player.hit_points
      points_after=player.reduce_points
      expect(points_before - points_after).to eq(10)
    end


  end

end
