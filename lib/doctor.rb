class Doctor
  attr_reader :name
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Apointment.all.select {|appointment| appointment.doctor == self}
  end
  
end