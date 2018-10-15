class Patient
  attr_reader :name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date) #creates a new appointment that knows it belongs to the patient
    date = Appointment.new(date, self, doctor)
  end

  def appointments #iterates through the appointment array and returns appointments for the patient
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors #iterates through the appointments and collects the doctor for each appointment
    appointments.map { |appointment| appointment.doctor}
  end

end
