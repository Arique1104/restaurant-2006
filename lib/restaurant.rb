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

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(num)
      time = closing_time(num).to_i

      am_or_pm = if time > 12
        "PM"
      else
        "AM"
      end

      convert_time = if time > 12
        time - 12
        else
        time
        end


    "#{@name} will be closing at #{convert_time}:00#{am_or_pm}"
  end


end
