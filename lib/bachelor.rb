def get_first_name_of_season_winner(data, season)
  winner = data[season].find {|contestant| contestant["status"].eql? "Winner"}
  winner["name"].split(" ").first
end

def get_women data
  data.flat_map {|season, women| women}
end

def get_contestant_name(data, occupation)
  get_women(data)
    .find {|woman| woman["occupation"].eql? occupation}["name"]
end

def count_contestants_by_hometown(data, hometown)
  get_women(data).reduce(0) {|hometown_count, woman|
    hometown_count++ if woman["hometown"].eql hometown
  }
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
