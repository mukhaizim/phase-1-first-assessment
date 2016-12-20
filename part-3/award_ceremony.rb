class AwardCeremony
  include Ticketable
  attr_reader :name, :event_date, :tickets

  def initialize(args = {})
    @name = args[:name]
    @event_date = args[:event_date]
    @tickets = args.fetch(:tickets, [])
  end

end
