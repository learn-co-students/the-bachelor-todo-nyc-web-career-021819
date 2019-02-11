require "pry"

def get_first_name_of_season_winner(data, season)
str = []
  data.each do |seasons, details|
    if seasons == season
    details.each do |contestant|
      if contestant["status"] == "Winner"
        str= contestant["name"].split(' ').first
      end
    end
  end
  end
  str
end

def get_contestant_name(data, occupation)
  data.each do |seasons, details|
    details.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasons, details|
    details.each do |contestant|
      contestant.each do |key,value|
      if value == hometown
        count+=1
      end
      end
    end
  end
  count
end


def get_occupation(data, hometown)
  hash = {}
  data.each do |seasons, details|
    details.each do |contestant|
      if contestant["hometown"] == hometown
      return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  count = 0
  sum = 0
  data.each do |seasons, details|
    if seasons == season
    details.each do |contestant|
      contestant.each do |key, value|
        if key == "age"
          sum +=value.to_f
        count +=1
        end
      end
    end
  end
  end
  average = (sum/count).round
  return average
end
