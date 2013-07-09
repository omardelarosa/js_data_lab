JsDataLab::Application.routes.draw do

  resources :violations

  match 'json' => 'violations#json'

  match 'morris' => 'violations#morris'

end
