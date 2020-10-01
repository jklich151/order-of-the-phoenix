class Member
  attr_reader :name, :role, :house, :patronus

  def initialize(member)
    @name = member[:name]
    @role = member[:role]
    @house = member[:house]
    @patronus = member[:patronus]
  end
end
