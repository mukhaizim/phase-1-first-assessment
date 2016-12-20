class FilmProject
require 'pry'
  attr_accessor :title, :director
  attr_reader :cast, :casting_budget

  def initialize(args)
    @title = args.fetch(:title, 'none')
    @director = args.fetch(:director, 'none')
    @cast = args.fetch(:cast, [])
    @casting_budget = args.fetch(:casting_budget, 0)
  end

  def remaining_budget
    #ask again why not @cast
     new_salaries_array = cast.map {|actor| actor.salary}
     new_salaries = new_salaries_array.reduce(0){|sum,x| sum + x}
     remaining_budget = casting_budget - new_salaries
  end

  def add_actor(actor_instance)
    if actor_instance.salary <= casting_budget
      cast << actor_instance
      true
    else
      false
    end
  end

  def headliners
    cast.select {|actor| actor.popularity_rating > 8}
  end
end
