class Patient

    attr_accessor :name

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt|appt.patient == self}
    end

    def new_appointment(doctor,date)
        new_data = Appointment.new(date,self,doctor)
        new_data
    end

    def doctors
        appointments.map {|dr| dr.doctor}
    end
    

end