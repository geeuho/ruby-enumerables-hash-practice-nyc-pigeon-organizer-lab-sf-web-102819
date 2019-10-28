def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do | description, value|
    value.each do |stats, names|
      names.each do |name|
        if pigeons[name] == nil
          pigeons[name] = {}
        end
        if pigeons[name][description] == nil
          pigeons[name][description] = []
        end
        pigeons[name][description].push(stats.to_s)
      end
    end 
  end
  pigeons
end
