class Doctor
  
  require "pry"
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
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def new_appointment(date, patient)
    Appointment.new(date,self,patient)
  end
  
    def patients
   #   binding.pry
      
      appointments.collect {|appointment| appointment.patient}
    end
end