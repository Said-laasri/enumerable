class Mylist
  include MyEnumerable
  def initialize(*list)
    @list = list
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
#  <MyList: @list=[1, 2, 3, 4]>

# all? methode
list.all? { |e| e < 5 } # true

list.all? { |e| e > 5 } # false
# any? methode
list.any? { |e| e == 2 } # true

list.any? { |e| e == 5 } # false
# filter? methode
list.filter { |e| e.even? } # [2, 4]
