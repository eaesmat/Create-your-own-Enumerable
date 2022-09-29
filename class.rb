require_relative 'module'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  # rubocop:disable Style/ExplicitBlockArgument
  def each
    @list.each { |item| yield item }
  end
  # rubocop:enable Style/ExplicitBlockArgument
end
list = MyList.new([1, 2, 3, 4])
# Test #all?
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
# Test #any?
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
# Test #filter?
print(list.filter?(&:even?))
