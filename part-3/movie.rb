class Movie
  attr_reader :title, :director, :cast, :awards, :award_nominations, :tickets

  def initialize(args = {})
    @title = args[:title]
    @director = args[:director]
    @cast = args.fetch(:cast, [])
    @awards = args.fetch(:awards, [])
    @award_nominations = args.fetch(:award_nominations, [])
    @tickets = args.fetch(:tickets, [])
  end

  def receive_award_nomination(award)
    @award_nominations << award
  end

  def receive_award(award)
    @awards << award
  end

  def take_ticket
    @tickets.pop
  end

  def tickets_left
    @tickets.length
  end

  def sold_out?
    @tickets.empty?
  end
end
