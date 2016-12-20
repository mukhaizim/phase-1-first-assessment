module Awardable

  def receive_award_nomination(award)
    @award_nominations << award
  end

  def receive_award(award)
    @awards << award
  end

end
