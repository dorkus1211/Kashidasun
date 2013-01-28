Kashidasun::Application.routes.draw do
  get "top" => "top#index", as: "top"

  get "userpage" => "userpage#index", as: "userpage"

  get "index" => "index#index", as: "index"

  get "admin" => "admin#index", as: "admin"

  get "delete" => "admin#delete"

  resources :top do
   collection {get "login","logout"}
  end

  resources :userpage do
  end

  resources :index do
    collection {get "ksearch"}
  end

  resources :books do
    collection {get "search"}
  end

  resources :members do
  end


  resources :admin do
    collection {get "member_new" , "member_list"}
    collection {post "member_create"}
    member {delete "book_delete", "member_delete"}
  end

  root to: "top#index"
end

