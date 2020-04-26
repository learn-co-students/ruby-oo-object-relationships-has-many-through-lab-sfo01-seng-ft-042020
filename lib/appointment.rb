class Appointment

    # attr_accessor :date, :patient, :doctor
    
    # @@all = []
  
    # def initialize(patient, date, doctor)
    #   @patient = patient
    #   @date = date
    #   @doctor = doctor
    #   @@all << self
    # end
  
    # def self.all
    #   @@all
    # end






    attr_accessor :patient, :doctor, :date
  
      @@all = []
  
    def initialize(date, patientObj, doctorObj)
      #date string:  "Monday, August 1st"
      @patient = patientObj
      @doctor = doctorObj
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.print_all
      @@all.map{|x| puts ("APPOINTMENTS:  \nPatient: #{x.patient.name}, Doctor: #{x.doctor.name}, Date: #{x.date}\n")}
    end




    
  end 