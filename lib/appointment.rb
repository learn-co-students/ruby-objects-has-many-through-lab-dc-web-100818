class Appointment

  attr_reader :date, :patient, :doctor

  @@all = []

  def self.all
    @@all
  end

  #here, date refers to a string (i.e. "Monday, August 1st")
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    self.class.all << self
  end

end
