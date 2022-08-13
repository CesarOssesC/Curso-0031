require_relative 'appointment.rb'
require_relative "one_time_appointment.rb"
require_relative "monthly_appointment.rb"
require_relative "daily_appointment.rb"


puts OneTimeAppointment.new("Desafío Latam", "Trabajo", 14, 30, 4, 6, 2019)
puts DailyAppointment.new("Desafío Latam", "Educación", 8, 15)
puts MonthlyAppointment.new("NASA", "Aliens", 8, 15, 23)
