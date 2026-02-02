require_relative 'event'

class WorkEvent < Event
  attr_accessor :location

  def initialize(start_date, duration, title, attendees, location)
    @location = location
    # super envoie les infos au initialize de Event
    super(start_date, duration, title, attendees)
  end

  def to_s
    super # Affiche les infos de base (titre, date...)
    puts "> Lieu : #{@location}"
  end
end