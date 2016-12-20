class Fancypeople

  attr_reader :award_nominations, :awards, :name

  def initialize(args = {})
    @name = args[:name]
    @award_nominations = args.fetch(:award_nominations, [])
    @awards = args.fetch(:awards, [])
  end
end
