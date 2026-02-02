class EventCreator
  def initialize
    puts "Salut, tu veux créer un événement ? Cool !"
    
    puts "Commençons par le titre :"
    print "> "
    title = gets.chomp

    puts "Quand aura-t-il lieu ? (AAAA-MM-JJ HH:MM)"
    print "> "
    start_date = gets.chomp

    puts "Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    duration = gets.chomp.to_i

    puts "Qui va participer ? (Sépare les emails par des ;)"
    print "> "
    attendees = gets.chomp.split(";").map(&:strip)

    # Animation de chargement
    system "clear"
    print "Analyse des données "
    10.times do
      print "█"
      sleep(0.1)
    end
    puts " 100%"
    sleep(0.5)

    new_event = Event.new(start_date, duration, title, attendees)
    puts "\nC'est bon, ton événement est créé !"
    new_event.to_s
    puts "\nAppuie sur ENTRÉE pour voir le calendrier..."
    gets
  end
end