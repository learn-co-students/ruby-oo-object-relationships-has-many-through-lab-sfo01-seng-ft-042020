require 'pry'
class Doctor
@@all = []
attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def patients
        self.appointments.map do |apts|
            apts.patient
        end
    end


    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |apts|
            self == apts.doctor
        end
    end

    def self.all
        @@all
    end
end