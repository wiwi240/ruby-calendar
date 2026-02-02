require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  @@all_events = []

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
    @@all_events << self
  end

  def self.all
    return @@all_events
  end

  def postpone_24h
    @start_date = @start_date + 86400
  end

  def end_date
    return @start_date + (@duration * 60)
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    !self.is_past?
  end

  def is_soon?
    @start_date < (Time.now + 1800) && @start_date > Time.now
  end

  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date.strftime('%Y-%m-%d %H:%M')}"
    puts "> Durée : #{@duration} minutes"
    puts "> Invités : #{@attendees.join(', ')}"
  end
end