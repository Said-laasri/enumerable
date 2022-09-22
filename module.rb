module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    arr = []
    list.each do |i|
      arr.push(i) if yield(i)
    end
    puts arr.length == list.length
  end

  def any?
    arr = []
    list.each do |i|
      arr.push(i) if yield(i)
    end
    puts !arr.empty?
  end

  def filter?
    arr = []
    list.each do |i|
      arr.push(i) if yield(i)
    end
    puts arr.to_s
  end
end
