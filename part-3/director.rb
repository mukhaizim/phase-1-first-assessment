class Director
  attr_reader :award_nominations, :awards, :name, :directed_shows

  def initialize(args = {})
    @name = args[:name]
    @directed_shows = args.fetch(:directed_shows, [])
    @award_nominations = args.fetch(:award_nominations, [])
    @awards = args.fetch(:awards, [])
  end

  def receive_award_nomination(award)
    @award_nominations << award
  end

  def receive_award(award)
    @awards << award
  end
end
