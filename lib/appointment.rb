class Appointment
  attr_reader :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor) #date is a string
    @date, @patient, @doctor = date, patient, doctor
    self.class.all << self
  end

  def self.all
    @@all
  end

end
