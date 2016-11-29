class TerrainHelper
  def score_difficulty(terrain_type)
    case terrain_type
    when :water
      50
    when :plains
      1
    when :forest
      5
    when :lava
      100
    when :mountains
      20
    else
      raise "I can't recognize this terrain type: #{terrain_type.inspect} (must be :water, :plains, :forest, :lava, or :mountains)"
    end
  end

  def letter_to_terrain(terrain_letter)
    case terrain_letter
    when "W"
      :water
    when "P"
      :plains
    when "F"
      :forest
    when "L"
      :lava
    when "M"
      :mountains
    else
      raise "I can't recognize this terrain letter: #{terrain_letter.inspect} (must be 'W', 'P', 'F', 'L' or 'M')"
    end
  end
end
