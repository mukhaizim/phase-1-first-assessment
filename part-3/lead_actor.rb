class LeadActor < Fancypeople
  include Awardable
  attr_reader :roles

  def initialize(args = {})
   super
    @roles = args.fetch(:roles, [])
  end
end
