class Patient

  def initialize(name)
    @name = name
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    appointments.collect do |appt|
      appt.doctor
    end
  end

end
