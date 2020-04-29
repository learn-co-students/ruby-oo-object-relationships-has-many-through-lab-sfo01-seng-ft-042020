class Patient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        new_appmnt = Appointment.new(doctor, self, date)
    end

    def appointments
        Appointment.all.select {|appmnt| appmnt.patient == self}
    end

    def doctors
        appointments.map {|appmnt| appmnt.doctor}
    end

end