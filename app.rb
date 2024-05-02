require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do 

  moves = ["rock", "paper","scissors"]
  @comp_move = moves.sample
  @my_move = "rock"

  @outcome = "lost."

  if (@comp_move=="rock")
    @outcome="tied."
  elsif (@comp_move == "scissors")
    @outcome = "won!"
  else
    @outcome = "lost."
  end

  erb(:movelook)

end

get("/paper") do 
  moves = ["rock", "paper","scissors"]
  @my_move = "paper"
  @comp_move = moves.sample

  @outcome = "lost."

  if (@comp_move=="paper")
    @outcome="tied."
  elsif (@comp_move == "rock")
    @outcome = "won!"
  else
    @outcome = "lost."
  end

  erb(:movelook)
end

get("/scissors") do

  moves = ["rock", "paper","scissors"]
  @comp_move = moves.sample
  @my_move = "scissors"

  @outcome = "lost."

  if (@comp_move=="scissors")
    @outcome="tied."
  elsif (@comp_move == "paper")
    @outcome = "won!"
  else
    @outcome = "lost."
  end

  erb(:movelook)

end
