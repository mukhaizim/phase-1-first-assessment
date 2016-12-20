class Production

  attr_reader :title, :director, :cast, :awards, :award_nominations, :tickets

def initialize(args = {})
    @title = args[:title]
    @director = args[:director]
    @cast = args.fetch(:cast, [])
    @awards = args.fetch(:awards, [])
    @award_nominations = args.fetch(:award_nominations, [])
    @tickets = args.fetch(:tickets, [])
  end

end
