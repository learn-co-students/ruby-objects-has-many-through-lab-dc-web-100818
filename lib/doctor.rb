class Doctor

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  #here, patient refers to an instance of Patient class
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appt| appt.doctor == self }
  end

  def patients
    self.appointments.collect { |appt| appt.patient }
  end

end
