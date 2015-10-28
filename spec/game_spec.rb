
describe Game do
  subject(:game) { Game.new }
  let(:player1) { double(:player)}
  let(:player2) { double(:player)}

  describe "attack" do
    it "player 1 attacks player 2" do
      expect(player2).to receive(:reduce_points)
      game.attack(player2)
    end
  end

end
