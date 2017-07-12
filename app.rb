require 'sinatra'
require 'yaml'
require 'kramdown'

get '/' do
  erb :index
end

get '/question/:name?' do
  question_name = params[:name] || 'cheating'
  @question = YAML.load_file("questions/#{question_name}.yml")
  erb :question, layout: :layout
end

get '/question/:name/yes' do
  @question = YAML.load_file("questions/#{params[:name]}.yml")
  erb :yes, layout: :layout
end

get '/lawyer' do
  erb :lawyer, layout: :layout
end

get '/sorry' do
  erb :sorry, layout: :layout
end
