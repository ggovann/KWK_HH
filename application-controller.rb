require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

get'/' do
 erb :index
end

get '/questions' do
  erb :questions
end
get '/survey' do
  erb :survey
end
get '/index' do
  erb :index
end
get '/restaurant' do
  erb :restaurant
end
get '/about' do
  erb :about
end


post  '/results' do
  answers = params.values
  @total= 0
 answers.each do |answer|
 @total += answer.to_i
 end
#
 puts @total
 @health = health_quiz(@total)
if @health = "female_teen_unhealthy"
erb :female_teen_unhealthy
elsif @health == "female_teen_normal"
erb :female_teen_normal
elsif @health == "female_teen_healthy"
     erb :female_teen_healthy
  end

   @health = health_quiz(@total)
  if @health = "unhealthy"
     erb :unhealthy
  elsif @health == "normal"
    erb :normal
  elsif @health == "healthy"
    erb :healthy

    end
  end
end
#
#   @health = health_quiz(@total)
#
#   if @health = "male_teen_unhealthy"
#
#     erb :male_teen_unhealthy
#      elsif @health == "male_teen_normall"
#      erb :male_teen_normal
#    elsif @health == "male_teen_healthy"
#         erb :male_teen_healthy
#     end
#
#    @health = health_quiz(@total)
#    if @health = "male_adult_unhealthy"
#      erb :male_adult_unhealthy
#    elsif @health == "male_adult_normall"
#      erb :male_adult_normal
#    elsif @health == "male_adult_healthy"
#      erb :male_adult_healthy
#   end
#  end
# end
