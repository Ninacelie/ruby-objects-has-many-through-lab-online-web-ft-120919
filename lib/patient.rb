class Patient

  attr_accessor :name, :appointments, :doctors

  @@all = []

    def initialize(name)
      @name = name
      @appointments = []
      @@all << self
    end

    def self.all
      @@all
    end

    def new_appointment(doctor, date)
      appointment = Appointment.new(date, self, doctor)
        @appointments << appointment 
    end

    def appointments
      Appointment.all.select do |appointment|
        appointment.doctor == self
      end
    end

    def doctors
      appointments.all.map do |appointment|
        appointment.doctor
      end
    end

end
