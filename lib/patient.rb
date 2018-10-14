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
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appts| appts.patient}
  end

  def doctors
    Appointment.all.collect {|appts| appts.doctor}
  end
end
