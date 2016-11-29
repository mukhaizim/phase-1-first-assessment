require_relative "spec_helper"

describe StageMusical do
  let (:show) do
    StageMusical.new({
      :title    => "Into the Woods"
    })
  end

  it "has a title" do
    expect(show.title).to eq "Into the Woods"
  end

  it "has a director" do
    director = Director.new
    show = StageMusical.new(director: director)

    expect(show.director).to eq director
  end

  it "has a composer" do
    composer = "Rob Zombie"
    show = StageMusical.new(composer: composer)

    expect(show.composer).to eq composer
  end

  it "defaults to having an empty cast" do
    expect(show.cast).to eq []
  end

  it "can be instantiated with a cast" do
    actor = LeadActor.new
    show = StageMusical.new(cast: [actor])

    expect(show.cast).to match_array [actor]
  end

  describe "being nominated for and winning awards" do
    it "defaults to having no award_nominations" do
      expect(show.award_nominations).to eq []
    end

    it "can be instantiated with award nominations" do
      nominations = [Award.new]
      show = StageMusical.new(award_nominations: nominations)

      expect(show.award_nominations).to match_array nominations
    end

    it "can receive a nomination" do
      award = Award.new

      expect(show.award_nominations).to_not include award
      show.receive_award_nomination(award)
      expect(show.award_nominations).to include award
    end

    it "defaults to having no awards" do
      expect(show.awards).to eq []
    end

    it "can be instantiated with awards" do
      awards = [Award.new]
      show = StageMusical.new(awards: awards)

      expect(show.awards).to match_array awards
    end

    it "can receive an award" do
      award = Award.new

      expect(show.awards).to_not include award
      show.receive_award(award)
      expect(show.awards).to include award
    end
  end

  describe "having tickets" do
    let(:musical_tickets) do
      [Ticket.new(cost:10, time:"7:00pm"),
       Ticket.new(cost:10, time:"7:00pm")]
    end

    let(:musical) { StageMusical.new(tickets: musical_tickets) }

    it "defaults to having no tickets" do
      hamilton = StageMusical.new
      expect(hamilton.tickets).to eq []
    end

    it "can have tickets" do
      expect(musical.tickets).to eq(musical_tickets)
    end

    it "allows tickets to be taken" do
      expect(musical.take_ticket).to be_a(Ticket)
    end

    it "reports the tickets left" do
      expect(musical.tickets_left).to eq(2)
    end

    it "can tell if it's sold out" do
      expect(musical.sold_out?).to be(false)
      musical.take_ticket
      musical.take_ticket
      expect(musical.sold_out?).to be(true)
    end
  end
end
