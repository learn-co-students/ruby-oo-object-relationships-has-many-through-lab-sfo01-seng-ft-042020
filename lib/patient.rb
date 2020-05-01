
class Patient

    attr_accessor :name, :appointment, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |a|
            a.patient == self
        end
    end

    def doctors
        self.appointments.collect do |a|
            a.doctor
        end
    end


end