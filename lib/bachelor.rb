
# {"season 30" => [{"name" => "Beth Smalls", ...}, ...], ...}



# def get_first_name_of_season_winner(data, season)
#   winner = ""
#   data.each do |s, contestant_data|
#   	contestant_data.each do |contestants|
#   		if contestants["status"].downcase == "winner" && s.to_s == season
#   			winner = contestants["name"]
#   		end
#   	end
#   end
#   winner.split(" ").first
# end



def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end





def get_contestant_name(data, occupation)
 	data.each do |s, contestant_data|
  		contestant_data.each do |contestants|
  			if contestants["occupation"] == occupation
  				return contestants["name"]
  			end
  		end
  	end
end




def count_contestants_by_hometown(data, hometown)
	counter = 0
	data.each do |s, contestant_data|
  		contestant_data.each do |contestants|
  			if contestants["hometown"] == hometown
  				counter += 1
  			end
  		end
  	end
  	counter
end

def get_occupation(data, hometown)
  	data.each do |s, contestant_data|
  		contestant_data.each do |contestants|
  			if contestants["hometown"] == hometown
  				return contestants["occupation"]
  			end
  		end
  	end
end

def get_average_age_for_season(data, season)
	ages = []
	data[season].each do |contestant_hash|
    	ages << contestant_hash["age"].to_f
 	end
 	sum = 0
  	ages.each { |age| sum += age}
  	(sum / ages.length).round
end
