
class Patient
  attr_accessor :name

  @@all = []

  def self.all 
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  # given a doctor and date, creates a new appointment belonging to that patient
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  # calls Appointment all class variable array
  # selects only appointments associated with self (this patient instance)
  def appointments 
    Appointment.all.select { |appointment| appointment.patient == self}
  end

  # calls appointments method and maps each self (patient) doctors
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end


end