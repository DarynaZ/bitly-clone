get '/' do
  @urls = Url.all
  erb :"static/index"
end

post '/urls' do
  params
  long_url = params[:long_url]
  Url.create(long_url: long_url)
  redirect '/'
end

get 'success' do
	erb :"static/success"
end
