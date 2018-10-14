class Doctor
  attr_accessor :name, :all

  def initialize(name)
    @name = name
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    appointments.collect do |appt|
      appt.patient
    end
  end

end
