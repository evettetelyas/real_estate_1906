require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_room_exists
    room = Room.new(:bedroom, 10, 13)

    assert_instance_of Room, room
  end

  def test_category_exist
    room = Room.new(:bedroom, 10, 13)

    assert_equal :bedroom, room.category
  end

  def test_area
    room = Room.new(:bedroom, 10, 13)

    assert_equal 130, room.area
  end

end
