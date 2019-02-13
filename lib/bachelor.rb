require 'pry'

def get_first_name_of_season_winner(data, season)
  name = nil
  data[season].each do |people|
    people.each do |key, value|
      if value == "Winner"
        name = people["name"].split(' ').first
      end 
    end
  end  
  name
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |people|
      people.each do |key,value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0 
  total_age = 0
  average_age = 0
  data[season].each do |people|
    people.each do |key, value|
      count += 1
      total_age += people["age"].to_f
    end
  end
  average_age = (total_age / count).round
end
