module MyEnumerable
  def all?
    ans = true
    each do |i|
      ans = false unless yield i
    end
    ans
  