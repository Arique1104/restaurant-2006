class Restaurant
  attr_reader   :opening_time,
                :name,
                :dishes

  def initialize(open_time, name)
    @opening_time = open_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    num = @opening_time[0..1].to_i + time
    "#{num}:00"
  end


end
