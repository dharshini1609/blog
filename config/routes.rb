
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/blog/signup' => 'blogpage#signup'
get '/blog/login' => 'blogpage#displaylogin'
post '/blog/login' => 'blogpage#checklogininfo'
get '/blog/signup' => 'blogpage#signupfunction'
post '/blog/signup' => 'blogpage#signupfunction'

post '/blog/authenticatelogin' => 'blogpage#checklogininfo'
post '/blog/insertion' => 'blogpage#signupfunction'
get '/blog/postpage' => 'blogpage#viewposts'  #changed recently
post '/blog/createpost' => 'blogpage#savepagefunction'
post '/blog/viewpostfunction' => 'blogpage#viewpostpage'
get '/blog/viewuserprofileposts' => 'blogpage#viewprofile'
post '/blog/createpostofuser' => 'blogpage#saveuserposts'
# get '/blog/userprofilepath' => 'blogpage#userprofile'

end
