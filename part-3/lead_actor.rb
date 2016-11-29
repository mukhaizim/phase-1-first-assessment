class LeadActor
  attr_reader :award_nominations, :awards, :name, :roles

  def initialize(args = {})
    @name = args[:name]
    @roles = args.fetch(:roles, [])
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
