require_relative "spec_helper"

describe AwardCeremony do
  let (:ceremony) { AwardCeremony.new(name: "Oscars", event_date: "02-02-2017") }

  it "has a name" do
    expect(ceremony.name).to eq "Oscars"
  end

  it "has an event date" do
    expect(ceremony.event_date).to eq "02-02-2017"
  end

  it "defaults to having no tickets" do
    expect(ceremony.tickets).to eq []
  end

  describe "having tickets" do
    let(:ceremony_tickets) do
      [Ticket.new(cost:10, time:"7:00pm"),
       Ticket.new(cost:10, time:"7:00pm")]
    end

    let(:ceremony) { AwardCeremony.new(tickets: ceremony_tickets) }

    it "defaults to having no tickets" do
      sold_out_ceremony = AwardCeremony.new
      expect(sold_out_ceremony.tickets).to eq []
    end

    it "can have tickets" do
      expect(ceremony.tickets).to eq(ceremony_tickets)
    end

    it "allows tickets to be taken" do
      expect(ceremony.take_ticket).to be_a(Ticket)
    end

    it "reports the tickets left" do
      expect(ceremony.tickets_left).to eq(2)
    end

    it "can tell if it's sold out" do
      expect(ceremony.sold_out?).to be(false)
      ceremony.take_ticket
      ceremony.take_ticket
      expect(ceremony.sold_out?).to be(true)
    end
  end

end
