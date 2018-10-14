require 'pry'

class Doctor

  attr_accessor :name, :doctor, :appointments

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @appointments = []
    self.class.all << self
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(date, patient, self)
    self.appointments << new_appointment
    self.appointments[0]
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient if appointment.doctor == self}
  end

end
