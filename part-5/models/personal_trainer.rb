class PersonalTrainer
  attr_reader :name, :hourly_rate, :location, :clients

  def initialize(args = {})
    @name = args[:name]
    @hourly_rate = args[:hourly_rate]
    @location = args[:location]
    @clients = args.fetch(:clients, [])
  end

  def add_client(client)
    clients << client
  end
end
