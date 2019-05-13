class Doctor
   attr_reader :name, :appointment, :patient
   @@all = []

   def initialize(name)
    @name = name
    @appointments
    @@all << self
  end

   def self.all
    @@all
  end

   def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

   def appointments

    Appointment.all do |appointment|
      appointment.patient == self
    end
  end

   def patients
    Appointments.each do |appointment|
      appointment.patient 
    end
  end

 end
