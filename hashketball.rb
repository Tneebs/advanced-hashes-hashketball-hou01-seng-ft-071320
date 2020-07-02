require './hashketball.rb'
require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player)
  points_scored = 0
  game_hash.each do |team, team_attributes|
    team_attributes[:players].each do |attribute|
      if attribute[:player_name] == player
        points_scored = attribute[:points]
      end
    end
  end
  points_scored
end

def shoe_size(player)
  s_size = 0 
  game_hash.each do |team, team_attributes|
    team_attributes[:players].each do |attribute|
      if attribute[:player_name] == player
        s_size = attribute[:shoe]
      end
    end
  end
  s_size
end

def team_colors(team_name)
  colors = nil
  game_hash.map do |team, team_attributes|
    if team_attributes[:team_name] == team_name
      colors = team_attributes[:colors]
    end
  end
  colors
end

def team_names
  game_hash.map do |team, team_attributes|
    team_attributes[:team_name]
  end
end

def player_numbers(team_name)
  numbers = []
  game_hash.map do |team, team_attributes|
    if team_attributes[:team_name] == team_name
      team_attributes[:players].map do |player, stats|
        numbers << player[:number]
      end
    end
  end
  numbers
end

def player_stats(player)
  game_hash.each do |team, team_attributes|
    team_attributes[:players].each do |players_name|
      return game_hash[:away][:players][player_name]
  end
end
end