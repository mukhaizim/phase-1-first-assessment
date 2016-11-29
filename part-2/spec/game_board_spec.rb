require_relative "spec_helper"

describe GameBoard do
  let(:my_helper)  { TerrainHelper.new }

  let(:my_terrain_list) do
    ["W","W","P","P","F","M","L","L","L"]
  end

  let(:board_size) { 3 }

  let(:my_game_board) do
    GameBoard.new(terrain_helper: my_helper, terrain_list: my_terrain_list, size: board_size)
  end

  it "has a helper" do
    expect(my_game_board.terrain_helper).to be_a(TerrainHelper)
  end

  it "has a terrain list" do
    expect(my_game_board.terrain_list).to eq(my_terrain_list)
  end

  it "has a size" do
    expect(my_game_board.size).to eq(board_size)
  end

  describe "#terrain_map", {terrain_map: true} do
    it "yields a 2D map of the terrain" do
      expect(my_game_board.terrain_map)
        .to eq([
                [:water,  :water,  :plains],
                [:plains, :forest, :mountains],
                [:lava,   :lava,   :lava]
               ])
    end

    it "responds to board size" do
      small_size = 2
      short_terrain_list = ["W","P","P","W"]
      small_board = GameBoard.new(terrain_list: short_terrain_list, size: small_size, terrain_helper: my_helper)

      expect(small_board.terrain_map)
        .to eq([
                [:water,  :plains],
                [:plains, :water]
               ])
    end
  end

  describe "#difficulty_of_journey", {difficulty: true} do
    it "totals the difficulty of a journey" do
      journey = [[0,0], [0,1], [1,1], [1,2], [2,2]]
      expect(my_game_board.difficulty_of_journey(journey)).to eq(225)
    end
  end
end
