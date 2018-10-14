
class Doctor
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  # given a date and a patient, creates a new appointment
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  # calls Appointment all class variable array
  # selects only appointments associated with self (this doctor instance)
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end


end