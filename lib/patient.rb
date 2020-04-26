class Patient

    # attr_accessor :name, :appointment, :doctor
    # @@all = []
  
    # def initialize(name)
    #   @name = name
    #   @@all << self
    # end
  
    # def self.all
    #   @@all
    # end
  
    # def appointments
    #   Appointment.all.select {|s| s.patient == self}
    # end
  
    # def doctors
    #   appointments.collect {|appointment| appointment.doctor}
    # end
  
    # def new_appointment(doctor, date)
    #   Appointment.new(self, date, doctor)
    # end
  
    
    @@all = []
    attr_accessor :name
  
    def initialize(patientName)
        @name = patientName
        @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.print_all
      @@all.map{ |x| puts("Patient:  #{x.name}")}
    end
  
    def doctors
      #iterates over this patient's appointment and
      #collects the doctor that belongs to each appointment
  
      #collect all appointments that belong to me
      appts = Appointment.all.select{ |x| x.patient == self }
  
      #create the doctors array
      drs = appts.map{ |x| x.doctor }
  
      #return the doctors array
      drs
  
    end
  
    def appointments
      Appointment.all.select{ |x|  x.patient == self }
    end
  
    def new_appointment(doctorObj, dateStr)
      #do not create appointments in two different places
      #doctor new_appointment calls patient new_appointment
      #only patient new_appointment creates the new appt.
      Appointment.new(dateStr, self, doctorObj)
    end
  


  end 