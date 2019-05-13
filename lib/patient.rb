class Patient
  attr_reader :name, :appointment, :doctor
    @@all = []
     def initialize(name)
      @name = name
      @@all << self
    end

     def new_appointment(doctor, date)
      Appointment.new(self, date, doctor)
    end

     def appointments


   Appointment.all.select do |appointment|
        appointment.patient == self
      end
    end

     def doctors
      Appointment.all.map do |appointment|
        appointment.doctor
      end
    end

    def self.all
      @@all
    end
  end
#   attr_accessor :name
#
#   def initialize
#     @name = name
#     @appointments = []
#   end
#
# end
# attr_accessor :name, :appointments
#
#    def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#    def new_appointment(appointment)
#     @appointments << appointment
#     appointment.patient = self
#   end
#
#    def appointments
#     @appointments
#   end
#
#    def doctors
#     self.appointments.collect do |appointment|
#       appointment.doctor
#     end
#   end
# end
