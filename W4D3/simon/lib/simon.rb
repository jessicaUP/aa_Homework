class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while game_over == false
    take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !self.game_over
      round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    p seq
    add_random_color
  end

  def require_sequence
    p "Enter: #{sequence_length} colors (red, yellow, green, blue)"
    response = gets.chomp.downcase 
    answer_arr = response.split(" ")
  end

  def add_random_color
    colors = ["red", "blue", "yellow", "green"]
    random_color = colors.sample
    seq << random_color
  end

  def round_success_message
    p "CORRECT :)"
  end

  def game_over_message
    p "YOU LOSE!!"

  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
