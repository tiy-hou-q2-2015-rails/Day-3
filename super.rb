class Person
  def do_evil
    puts "NO WAY"
  end
end


class Hero < Person
  def do_evil
    puts "I STOP EVIL BRO"
  end
end

class Villian < Hero
  def do_evil
    super
    puts "... becoming evil ..."
    puts "... doing evil ..."
    puts "... changing my ways ..."
    super
  end
end


v = Villian.new
v.do_evil
