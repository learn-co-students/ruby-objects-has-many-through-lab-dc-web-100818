class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.collect { |appointment| appointment.doctor }
  end

end
