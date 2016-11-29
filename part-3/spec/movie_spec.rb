require_relative "spec_helper"

describe Movie do
  let (:movie) do
    Movie.new({
      :title    => "Stardust"
    })
  end

  it "has a title" do
    expect(movie.title).to eq "Stardust"
  end

  it "has a director" do
    director = Director.new
    movie = Movie.new(director: director)

    expect(movie.director).to eq director
  end

  it "defaults to having an empty cast" do
    expect(movie.cast).to eq []
  end

  it "can be instantiated with a cast" do
    actor = LeadActor.new
    movie = Movie.new(cast: [actor])

    expect(movie.cast).to match_array [actor]
  end

  describe "being nominated for and winning awards" do
    it "defaults to having no award_nominations" do
      expect(movie.award_nominations).to eq []
    end

    it "can be instantiated with award nominations" do
      nominations = [Award.new]
      movie = Movie.new(award_nominations: nominations)

      expect(movie.award_nominations).to match_array nominations
    end

    it "can receive a nomination" do
      award = Award.new

      expect(movie.award_nominations).to_not include award
      movie.receive_award_nomination(award)
      expect(movie.award_nominations).to include award
    end

    it "defaults to having no awards" do
      expect(movie.awards).to eq []
    end

    it "can be instantiated with awards" do
      awards = [Award.new]
      movie = Movie.new(awards: awards)

      expect(movie.awards).to match_array awards
    end

    it "can receive an award" do
      award = Award.new

      expect(movie.awards).to_not include award
      movie.receive_award(award)
      expect(movie.awards).to include award
    end
  end

  describe "having tickets" do
    let(:movie_tickets) do
      [Ticket.new(cost:10, time:"7:00pm"),
       Ticket.new(cost:10, time:"7:00pm")]
    end

    let(:movie) { Movie.new(tickets: movie_tickets) }

    it "defaults to having no tickets" do
      popular_movie = Movie.new
      expect(popular_movie.tickets).to eq []
    end

    it "can have tickets" do
      expect(movie.tickets).to eq(movie_tickets)
    end

    it "allows tickets to be taken" do
      expect(movie.take_ticket).to be_a(Ticket)
    end

    it "reports the tickets left" do
      expect(movie.tickets_left).to eq(2)
    end

    it "can tell if it's sold out" do
      expect(movie.sold_out?).to be(false)
      movie.take_ticket
      movie.take_ticket
      expect(movie.sold_out?).to be(true)
    end
  end

end
