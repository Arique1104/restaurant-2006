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
    num = @opening_time.to_i + time
    "#{num}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i <= 12
  end


end
