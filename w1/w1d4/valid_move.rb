def valid_move(position)
  valid_moves = []
  diffs = [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [2, -1], [-2, 1], [-2, -1]]

  diffs.each do |difference|
    valid_moves << [position[0] + difference[0], position[1] + difference[1]]
  end
  
  valid_moves.select { |move| valid_position(move)}
end

def valid_position(position)
  (position[0] >= 0 && position[0] < 8) && (position[1] >= 0 && position[1] < 8)
end
