require 'pry'
def game_hash
	game_hash = {#first
		:home => {#second
			:team_name => "Brooklyn Nets",
			:colors => ["Black", "White"],
			:players => {#third
				"Alan Anderson" => {
					:number => 0,
					:shoe => 16,
					:points => 22,
					:rebounds => 12,
					:assists => 12,
					:steals => 3,
					:blocks => 1,
					:slam_dunks => 1
				},
				"Reggie Evans" => {
					:number => 30,
					:shoe => 14,
					:points => 12,
					:rebounds => 12,
					:assists => 12,
					:steals => 12,
					:blocks => 12,
					:slam_dunks => 7
				},
				"Brook Lopez" => {
					:number => 11,
					:shoe => 17,
					:points => 17,
					:rebounds => 19,
					:assists => 10,
					:steals => 3,
					:blocks => 1,
					:slam_dunks => 15
				},
				"Mason Plumlee" => {
					:number => 1,
					:shoe => 19,
					:points => 26,
					:rebounds => 12,
					:assists => 6,
					:steals => 3,
					:blocks => 8,
					:slam_dunks => 5
				},
				"Jason Terry" => {
					:number => 31,
					:shoe => 15,
					:points => 19,
					:rebounds => 2,
					:assists => 2,
					:steals => 4,
					:blocks => 11,
					:slam_dunks => 1
				},

			},#third
		}, #second
		:away => {#fourth
			:team_name => "Charlotte Hornets",
			:colors => ["Turquoise", "Purple"],
			:players => {#fifth
				"Jeff Adrien" => {
					:number => 4,
					:shoe => 18,
					:points => 10,
					:rebounds => 1,
					:assists => 1,
					:steals => 2,
					:blocks => 7,
					:slam_dunks => 2
				},
				"Bismak Biyombo" => {
					:number => 0,
					:shoe => 16,
					:points => 12,
					:rebounds => 4,
					:assists => 7,
					:steals => 7,
					:blocks => 15,
					:slam_dunks => 10
				},
				"DeSagna Diop" => {
					:number => 2,
					:shoe => 14,
					:points => 24,
					:rebounds => 12,
					:assists => 12,
					:steals => 4,
					:blocks => 5,
					:slam_dunks => 5
				},
				"Ben Gordon" => {
					:number => 8,
					:shoe => 15, 
					:points => 33,
					:rebounds => 3,
					:assists => 2,
					:steals => 1,
					:blocks => 1,
					:slam_dunks => 0
				},
				"Brendan Haywood" => {
					:number => 33,
					:shoe => 15,
					:points => 6,
					:rebounds => 12,
					:assists => 12,
					:steals => 22,
					:blocks => 5,
					:slam_dunks => 12
				},
			},#fifth
		},#fourth
	}#first
	game_hash
end

#def good_practices
  #game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    #binding.pry
      #team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        #binding.pry
 
        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        #data.each do |data_item|
            #binding.pry
      #end
   # end
  #end
#end

def num_points_scored(player_name)
	game_hash.each do |home_or_away, team_data|
		team = team_data[:players]
		team.each do |x, y|
			#binding.pry
			if x == player_name
				#binding.pry
				return y[:points]
			end
		end
	end
end

def shoe_size(player_name)
	game_hash.each do |home_or_away, team_data|
		team = team_data[:players]
		team.each do |x, y|
			if x == player_name
				return y[:shoe]
			end
		end
	end
end

def team_colors(team_name)
	game_hash.each do |home_or_away, team_data|
		if team_data[:team_name] == team_name
			#binding.pry
			return team_data[:colors]
		end
	end
end

def team_names
	game_hash.collect do |home_or_away, team_data|
		team_data[:team_name]
	end
end

def player_numbers(team_name)
	jerseys = []
	game_hash.each do |home_or_away, team_data|
		if team_data[:team_name] == team_name
			team = team_data[:players]
			team.each do |x,y|
				jerseys << y[:number]
			end
		end
	end
	jerseys
end

def player_stats(player_name)
	game_hash.each do |home_or_away, team_data|
		team = team_data[:players]
		team.each do |x, y|
			if x == player_name
				return y
			end
		end
	end
end

def big_shoe_rebounds
	shoe_size = 0
	player = ""
	game_hash.each do |home_or_away, team_data|
		team = team_data[:players]
		team.each do |x, y|
			shoe_size = y[:shoe]
			break
		end
	end
	game_hash.each do |home_or_away1, team_data1|
		team_1 = team_data1[:players]
		team_1.each do |a, b|
			if b[:shoe] > shoe_size
				shoe_size = b[:shoe]
			end
		end
	end
	game_hash.each do |home_or_away2, team_data2|
		team_2 = team_data2[:players]
		team_2.each do |c, d|
			if d[:shoe] == shoe_size
				return d[:rebounds]
			end
		end
	end
end









