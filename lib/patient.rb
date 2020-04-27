require 'pry'
class Patient
@@all = []
attr_accessor
attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def doctors
        self.appointments.map do |apts|
            apts.doctor
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |apts|
            self == apts.patient
        end
    end

    def self.all
        @@all
    end
end