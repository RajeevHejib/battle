require 'player'

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
describe Player do
  describe "#name" do
    subject(:rajeev) {Player.new("Rajeev")}
    it "will return name" do
      expect(subject.name).to eq("Rajeev")
    end
  end
end
