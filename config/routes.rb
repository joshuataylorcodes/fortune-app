Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "feature1_method"

  get "/lotto", controller: "my_examples", action: "rand_method"

  get "/99bottles", controller: "my_examples", action: "ninenine_bottles"
end
