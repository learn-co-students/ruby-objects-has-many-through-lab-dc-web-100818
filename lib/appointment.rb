class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

end
