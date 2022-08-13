class OneTimeAppointment < Appointment
    attr_reader :day, :month, :year

    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        day == @day && month == @month && year == @year
    end

    def to_s
        "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}."
    end

end

