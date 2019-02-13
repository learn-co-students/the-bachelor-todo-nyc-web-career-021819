require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      full_name = contestant["name"]
      full_name_array = full_name.split(" ")
      return full_name_array[0].to_s
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  return hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  all_ages = []

  data[season].each do |contestant|
    all_ages.push(contestant["age"].to_i)
  end

  average_age = all_ages.inject{|sum, x| sum + x }.to_f / all_ages.size

  return average_age.round

end
