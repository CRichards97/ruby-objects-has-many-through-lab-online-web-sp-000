class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patients, self)
  end

  def appointments
    self.appointments.map { |appoint| appoint.patient }.uniq
  end
  def patients
    appointments.map(&:patient)
  end
end
