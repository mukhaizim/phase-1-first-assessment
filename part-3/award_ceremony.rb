class AwardCeremony
  attr_reader :name, :event_date, :tickets

  def initialize(args = {})
    @name = args[:name]
    @event_date = args[:event_date]
    @tickets = args.fetch(:tickets, [])
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
