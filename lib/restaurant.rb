class Restaurant
  attr_reader   :opening_time,
                :name
  def initialize(open_time, name)
    @opening_time = open_time
    @name = name
  end
end
