module Ticketable

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
