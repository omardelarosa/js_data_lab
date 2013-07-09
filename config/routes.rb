JsDataLab::Application.routes.draw do

  resources :violations

  match 'json' => 'violations#json'
end
