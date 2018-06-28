require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

touch
get'/' do
 erb :index
end

get '/questions' do
  erb :questions
end

post  '/results' do
  answers = params.values
  @total= 0
 answers.each do |answer|
 @total += answer.to_i
end

puts @total
@health = health_quiz(@total)
if @health = "female_teen_unhealthy"
erb :Female_teen_unhealthy
elsif @health == "Female_teen_normal"
erb :Female_teen_normal
elsif @health == "Female_teen_healthy”
    erb :Female_teen_healthy
 end
end
  @health = health_quiz(@total)
  if @health = "female_adult_unhealthy"
    erb :Female_adult_unhealthy
  elsif @health == "Female_adult_normal"
    erb :Female_adult_normal
  elsif @health == "Female_adult_healthy”

    erb :Female_adult_healthy
 end
end
  @health = health_quiz(@total)

  if @health = "male_teen_unhealthy"

    erb :male_teen_unhealthy
  elsif @health == "male_teen_normall"
    erb :male_teen_normal
 elsif @health == "male_teen_healthy”
    erb :male_teen_healthy
end
end
  @health = health_quiz(@total)
  if @health = "male_adult_unhealthy"
    erb :male_adult_unhealthy
  elsif @health == "male_adult_normall"
    erb :male_adult_normal
  elsif @health == "male_adult_healthy”
    erb :male_adult_healthy
 end
end
end