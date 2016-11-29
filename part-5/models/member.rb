class Member
  attr_reader :name, :birthday, :gender, :gyms, :personal_trainers

  def initialize(args = {})
    @name = args[:name]
    @birthday = args[:birthday]
    @gender = args[:gender]
    @gyms = args.fetch(:gyms, [])
    @personal_trainers = args.fetch(:personal_trainers, [])
  end

  def add_gym(gym)
    gyms << gym
  end

  def add_personal_trainer(personal_trainer)
    personal_trainers << personal_trainer
  end
end
