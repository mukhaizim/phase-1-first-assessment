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
# binding.pry
  def difficulty_of_journey(journey)
  end

  private

  def Journey_to_letters(journey)
    #takes the journey
    #find each index location
    #convert to letter


  end
end
