class Doctor
    attr_reader :name
    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appmnt| appmnt.doctor == self}
    end

    def new_appointment(date, patient)
        new_appointment = Appointment.new(patient, date, self)
    end

    def patients
        appointments.map {|appmnt| appmnt.patient}
    end
    
end