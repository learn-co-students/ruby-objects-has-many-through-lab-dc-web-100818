require 'pry'

class Patient

  attr_accessor :name, :doctor, :patient_appointments

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @patient_appointments = []
    self.class.all << self
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
    self.patient_appointments << new_appointment
    self.patient_appointments[0]
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end

  def doctors
    Appointment.all.collect { |appointment| appointment.doctor if appointment.patient == self}.compact
  end



end
