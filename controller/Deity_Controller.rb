class DeitiesController < Sinatra::Base
	# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") } 
  set :public_folder, Proc.new { File.join(root, "public") }

  configure :development do
      register Sinatra::Reloader
  end

  $deity = [{
     id: 0,
     title: "Zesus",
     body: "The King and Thunder God of Mt.Olympus",
     image: "Zeus.jpg"

  },
  {
    id: 1,
    title: "Amadioha",
    body: "Igbo God of Thunder and lightning",
    image: "Amadioha.jpg"
  },
  {
    id: 2,
    title: "Thor",
    body: "Norse God of Thunder",
    image: "Thor.jpg"

  }]

  get '/' do    
    @title = "Thunder Deities"
    @deity = $deity
    erb :"Deity/index"
  end

  get '/new'  do
    erb :"Deity/new"  
      
  end
    
  get '/:id' do
    id = params[:id].to_i
    @deity = $deity[id]
    erb :"Deity/show"
  end
    
  post '/' do
    
    "CREATE"
    
  end
    
  put '/:id'  do
    
    "UPDATE: #{params[:id]}"
    
  end
    
  delete '/:id'  do
    
    "DELETE: #{params[:id]}"
    
  end
    
  get '/:id/edit'  do
    id = params[:id].to_i
    @diety = $deity[id]
    erb :"Deity/edit"
  end
end


























