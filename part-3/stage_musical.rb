class StageMusical < Production
  include Ticketable
  include Awardable
  attr_reader :composer

  def initialize(args = {})
   super
    @composer = args[:composer]
  end

end
