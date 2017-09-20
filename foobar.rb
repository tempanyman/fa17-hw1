class Foobar

  def self.baz(a)
    a = a.collect {|x|
      x.to_f
    }
    a = a.reject {|x| x % 2 == 1}
    a = a.collect{|x| x + 2}
    a.uniq!
    a.reject! {|x| x > 10}
    sum = 0
    a.each {|x| sum += x}
    return sum
  end
end
