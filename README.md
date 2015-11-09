README File for What's Fresh App

This is a test of Atom's ability to outline in green if not committed to git.

Next steps

	Storing photos (users, farmers(, stalls?) )
		AWS?
		t.binary vs. t.string (with URL?)

	√ Destroy Session (logout)	(view? no)
	√ New Session (login)			(view? yes)
	[√] Make models
		[√] Farmer
		[√] Market
		[√] Item
		[√] Favorite
	[√] Solidify relationships
		????????
			http://snippets.aktagon.com/snippets/588-how-to-implement-favorites-in-rails-with-polymorphic-associations
	[√] Migrate Markets/farmers/items to have description

	[X] Make User Destroy (failed?)

	[√] Migration Changes:
		[√] Add :user_match string to Farmers table
			- Use: Users with farmer_access boolean
				can create a farmer page;
					(current_user.id set to
					:user_match of Farmer model)
					(Update, Destroy functions of
					farmer page depend upon
					:user_match matching
					current_user.id)
				will be
		[√] Add :farmer_access boolean to Users table

		[√] Make :user_match attribute of Farmer an
			integer


	[√] Migrations:
		[√] Add __ to Farmers table
			[√] Photo
			[√] Short Description
		[√] Amend Famers Controller params
		[√] Add __ to Markets table
			[√] Photo





	[] Make views
		[√] Market
			[√] Index
			[√] Show
			[X] New
			[X] Edit
		[] Farmer
			[X] Index
			[] Form
			[] Show
			[] New
			[] Edit

	[] Welcome (for root only)
		view
		controller
		model (empty)
	[] Seed markets, farmers, items,
	[] Make Controllers
		[√] Market
			[√] Make Market index view
			[√] Make Market show view
		[√] Farmer
		[] Item
		[√] Favorite
	[] Make views
		[]Welcome Page
		[]Markets/:id
		[]Markets/:market_id/Farmers/:id
		[]User/:id (private)
		[]
	[] Set Routes
		[]Welcome Page
		[]Markets/:id
		[]Farmers/:id
		[]User/:id
			[]Make secure to current_user
	[] Figure out how to have farmers be users
		[] Refactor farmers? (later)
	[] Make a header
	[] Seed in
		[] Farmers
		[] Markets
		[] Items

	[] Remove useless routes
		users index
		items index
			displayed on farmers page
		farmers index

	[] Refactor with forms to decrease repeated views

	Decide on t.references structure
		also relationship in models
			markets has many farmers
				farmers has many markets
			no stalls
				post comments;
		also pathing
			market/:id/farmer/:id

		home page
			description
			market-finder
			'root' => 'welcome#index?'
				index

Longterm Corrections:

	[] Farmers do not belong to markets;
		make this relationship has_and_belongs_to_many
	[] Make Farmers a special type of user
		user can favorite other users then?
			when user favorites farmer
		farmers have special permissions for editing
			but
	[] Make Comment functionality



Ongoing Questions:

	Where do Strong params go?

	Redirect to user/:id?

!!!	heroku and migrations
		do we migrate locally to get errors?
			then

	what does method "authorize" in application_controller.rb do?
		what is the purpose and where is it called?

	Why does my .git file show up in atom?

	Difference between find() find_by(params[:id])

	How to 'destroy' a session?
		Logout page?

	The method of CSS that doesn't keep loading a lot to
		the website/view?
			rendering? no, no not that...

	Sessions have and have nots?
		routes?
			yes
				get '/login' => 'session#new'
				post '/login' => 'session#create'
				get '/logout' => 'session#destroy'
		controller?
			yes
				def new
				end
				def create
				  user = User.find_by(email: params[:email])
				  if user && user.authenticate(params[:password])
					session[:user_id] = user.id
					redirect_to ('/')
				  else
					redirect_to ('/login')
				end
				def destroy
				  session[:user_id] = nil
				  redirect_to ('/')
				end
		model?
			no
		views?
			login?
			logout?
				is that a button?

			in application.html.erb (layout view)
				<% if current_user %>
				Signed in as <%= current_user.name %> | <%= link_to 'logout', 'users/new' %>
				<% else %>
				<%= link_to 'login', '/login' %> || <%= link_to 'signup', 'users/new' %>
				<% end %>




	google rails erd gem
		when using you must specify pdf


Nov3 Questions:

Routes: Sessions and Relationships

	If routes to /user are resources :users,
		What are the explicit routes to:
			resources :users do
				resources :posts
			end

	How would "resources :sessions, except: :destroy"
		help as a route?

	Do sessions have routes? Do sessions need routes?
		Are there any routes that sessions cannot/shouldn't have?

Views: Sessions and Relationships

	What views to added 'posts' have to 'users?'
		Just new/create?

	What views do sessions have?
		New
			the one with FORM_TAGS

			<h4>Write a Post</h4>
!!!		<%= form_for [ @user, @post ] do |f| %>
		<p>
		  <%= f.label :title %><br>
		  <%= f.text_field :title %>
		</p>
		<p>
		  <%= f.label :body %><br>
		  <%= f.text_field :body %>
		</p>
		<p>
		  <%= f.submit 'Post Me' %>
		</p>
		<% end %>

	In this "new" post part of a user's Show view,
		how does it know to create a post and not a
			new user?
		does it need [@user, @post] (which mean User.find and Post.new respectively)



Models: Sessions and Relationships

	Do models have "validates :user_id" or like fields?

Controllers: Sessions and Relationships

	Do session controllers need Strong Params?
		How would we set those up?
	No?
