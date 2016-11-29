class Gym
  attr_reader :company_name, :monthly_cost, :members, :locations

  def initialize(args = {})
    @company_name = args[:company_name]
    @monthly_cost = args[:monthly_cost]
    @members = args.fetch(:members, [])
    @locations = args.fetch(:locations, [])
  end

  def add_member(member)
    members << member
  end

  def add_location(location)
    locations << location
  end

end
