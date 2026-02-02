class CalendarDisplayer
  def self.show(events)
    puts "MOIS ACTUEL : FÉVRIER 2026"
    puts "---------------------------------------------------------------------"
    puts "| lun.    | mar.    | mer.    | jeu.    | ven.    | sam.    | dim.    |"
    puts "---------------------------------------------------------------------"

    (0..4).each do |week|
      line = "|"
      (1..7).each do |day_index|
        day_num = week * 7 + day_index
        events_today = events.select { |e| e.start_date.day == day_num }
        
        if day_num > 28 # Février 2026 s'arrête à 28
          line += "         |"
        elsif !events_today.empty?
          line += " #{day_num.to_s.ljust(2)} @#{events_today.first.start_date.hour}h |"
        else
          line += " #{day_num.to_s.ljust(2)}      |"
        end
      end
      puts line
      puts "---------------------------------------------------------------------"
    end
  end
end