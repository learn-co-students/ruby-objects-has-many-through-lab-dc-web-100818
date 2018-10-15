class Doctor
  attr_reader :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (patient, date) #creates a new appointment, the appointment knows it belongs to the doctor
    date = Appointment.new(date, patient, self)
  end

  def appointments #iterates through all appointments and find those belonging to this doctor (self)
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients #iterates thtough all the doctors appointments and collects the patient for each appointment
    self.appointments.map { |appointment| appointment.patient}
  end
end
