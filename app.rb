require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/work_event'
require_relative 'lib/event_creator'
require_relative 'lib/calendar_displayer'

def startup_animation
  system "clear"
  puts "DÉMARRAGE DU SYSTÈME CALENDRIER v2.0"
  print "Chargement des modules "
  20.times do
    print "░"
    sleep(0.05)
  end
  puts " OK"
  sleep(0.5)
end

# --- EXÉCUTION ---
startup_animation

# Données par défaut
User.new("julie@email.com", 32)
WorkEvent.new("2026-02-10 10:00", 60, "Meeting Pro", ["boss@thp.com"], "Bureau 1")

puts "\nVeux-tu créer un événement ? (y/n)"
print "> "
if gets.chomp == 'y'
  EventCreator.new
end

system "clear"
puts "--- GÉNÉRATION DU CALENDRIER FINAL ---"
CalendarDisplayer.show(Event.all)