require 'pry'
class Appointment
@@all = []
attr_accessor :patient, :doctor
attr_reader :date
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end




    def self.all
        @@all
    end
end