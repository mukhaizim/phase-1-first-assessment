require_relative 'terrain_helper'
require 'pry'
class GameBoard

  attr_reader :terrain_helper
  attr_reader :terrain_list
  attr_reader :size

  def initialize(args={})
    @terrain_list = args[:terrain_list]
    @terrain_helper = args.fetch(:terrain_helper, TerrainHelper.new)
    @size = args[:size]
  end

  def terrain_map
   terrain_list.map{|letter| terrain_helper.letter_to_terrain(letter)}.each_slice(size).to_a
  end

  def difficulty_of_journey(journey)
   new_word_array = journey.map{|coordinate| terrain_map[coordinate.first][coordinate.last]}
   new_word_array.reduce(0){|sum,x| sum + terrain_helper.score_difficulty(x)}

  end

  private

#   def Journey_to_letters(journey)

#   end
end
