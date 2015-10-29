require 'forwardable'

class Game
  extend Forwardable
  attr_reader :players, :current_player

  def_delegator :player1, :name, :player1_name
  def_delegator :player1, :hit_points, :player1_hit_points
  def_delegator :player2, :name, :player2_name
  def_delegator :player2, :hit_points, :player2_hit_points
  def_delegator :current_player, :name, :current_player_name


  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  def attack
    opposite_player.reduce_points
  end

  def switch_player
    @current_player = opposite_player
  end

  private

  def opposite_player
    @current_player == player1 ? player2 : player1
  end
end
