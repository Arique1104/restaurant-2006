class Restaurant
  attr_reader   :opening_time,
                :name,
                :dishes

  def initialize(open_time, name)
    @opening_time = open_time
    @name = name
    @dishes = []
  end


end
