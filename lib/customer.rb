class Customer 

  def initialize(name, mobile)
    @name         = name
    @mobile = mobile
  end

  attr_reader :name, :mobile

end