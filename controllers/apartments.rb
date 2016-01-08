get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

get '/apartments/new' do
  erb :"apartments/new"
end

post '/apartments' do
  Apartment.create!(params[:apartment])
  redirect '/apartments'
end

get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @tenants = @apartment.tenants
  @id = params[:id].to_i
  erb :"apartments/show"
end

get '/apartments/:id/edit' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/edit"
end

put '/apartments/:id' do
  apartment = Apartment.find(params[:id])
  apartment.update!(params[:apartment])
  redirect "/apartments"
end

delete '/apartments/:id' do
  Apartment.destroy(params[:id])
  redirect "/apartments"
end
