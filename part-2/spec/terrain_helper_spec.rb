require_relative "spec_helper"

describe TerrainHelper do
  let(:helper) { TerrainHelper.new }

  describe "score difficulty" do
    it "scores how hard terrain is" do
      expect(helper.score_difficulty(:water)).to eq(50)
      expect(helper.score_difficulty(:plains)).to eq(1)
    end

    it "raises an exception if it can't recognize the terrain" do
      expect{helper.score_difficulty(:clouds)}
        .to raise_error("I can't recognize this terrain type: :clouds (must be :water, :plains, :forest, :lava, or :mountains)")
    end
  end

  describe "convering letters to terrain" do
    it "converts a letter to a terrain symbol" do
      expect(helper.letter_to_terrain("W")).to eq(:water)
      expect(helper.letter_to_terrain("M")).to eq(:mountains)
    end

    it "raises an exception if it can't recognize the terrain" do
      expect{helper.letter_to_terrain("C")}
        .to raise_error("I can't recognize this terrain letter: \"C\" (must be 'W', 'P', 'F', 'L' or 'M')")
    end
  end
end
