def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |attribute, data|
      if attribute["status"] == "Winner"
        return attribute["name"].split(" ").first
      end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |attribute, data|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_array = []
  data.each do |season, contestant|
    contestant.each do |attribute, data|
      if attribute["hometown"] == hometown
        hometown_array.push(attribute["name"])
      end
    end
  end
hometown_array.length
end

def get_occupation(data, hometown)
  # code here
   data.each do |season, contestant|
    contestant.each do |attribute, data|
      if attribute["hometown"] == hometown
        return attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
avergare_age = 0
    data[season].each do |attribute, data|
      age_array.push(attribute["age"].to_i)
    end
    sum = age_array.reduce :+
(sum / age_array.length.to_f).round
end
