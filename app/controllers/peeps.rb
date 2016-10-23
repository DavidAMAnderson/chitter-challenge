class ChitterChallenge < Sinatra::Base

  get '/' do
    'Hello'
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  get '/peeps/new' do
    erb :'peeps/new'
  end

  post '/peeps' do
    Peep.create(text: params[:peep])
  redirect '/peeps'
  end

end
