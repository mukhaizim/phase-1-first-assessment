class EquipmentItem
  attr_reader :type, :date_purchased, :location

  def initialize(args = {})
    @type = args[:type]
    @date_purchased = args[:date_purchased]
    @location = args[:location]
  end
end
