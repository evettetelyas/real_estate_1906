class House
  attr_reader :price, :address, :rooms, :rooms_sorted_by_category

  def initialize(price, address, rooms = [], rooms_sorted_by_category = {})
    @price = price
    @address = address
    @rooms = rooms
    @rooms_sorted_by_category = rooms_sorted_by_category
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.select {|room| room.category == category}
  end

  def area
    @rooms.map {|room| room.area}.sum
  end

  def price_float
    (@price.delete"$").to_f
  end

  def price_per_square_foot(house)
    (house.price_float / house.area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by {|room| room.area}.reverse
  end


  def rooms_sorted_by_category
    @rooms.each do |room|
      @rooms_sorted_by_category[room.category] = room
    end
    @rooms_sorted_by_category
  end

end
