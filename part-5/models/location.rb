class Location
  attr_reader :address, :gym, :equipment, :personal_trainers

  def initialize(args = {})
    @address = args[:address]
    @gym = args[:gym]
    @equipment = args.fetch(:equipment, [])
    @personal_trainers = args.fetch(:personal_trainers, [])
  end

  def add_equipment(equipment_item)
    equipment << equipment_item
  end

  def add_personal_trainer(personal_trainer)
    personal_trainers << personal_trainer
  end
end
