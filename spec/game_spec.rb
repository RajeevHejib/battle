
describe Game do
  subject(:game) { Game.new(player1, player2) }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  before :each do
    allow(Kernel).to receive(:rand).and_return 10
  end

  describe "initialize" do
    it "has player1 and player2" do
        expect(game.players).to eq ([player1, player2])
    end
  end

  describe "attack" do
    it "player 1 attacks player 2" do
      expect(player2).to receive(:reduce_points)
      game.attack
    end
  end

  describe "has palyer and player2" do
    it "returns player1" do
      expect(game.player1).to eq(player1)
    end
    it "returns player2" do
      expect(game.player2).to eq(player2)
    end
  end

  describe "current player" do
    it "returns current player" do
      expect(game.current_player).to eq(player1)
    end
  end

  describe "switch player" do
    it "changes current player" do
      game.switch_player
      expect(game.current_player).to eq(player2)
    end
  end

end
