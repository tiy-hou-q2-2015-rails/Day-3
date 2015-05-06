class Panda

  attr_accessor :name
  attr_accessor :weight

  def initialize
    self.name = "Crystal"
    self.weight = 0
  end

  def eat(pounds)
    self.weight = weight + pounds
  end

end

crystal = Panda.new
crystal.eat 300
crystal.eat 200
crystal.eat 400
crystal.eat 100
puts "#{crystal.name} weighs #{crystal.weight}"
