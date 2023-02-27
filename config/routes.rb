Rails.application.routes.draw do
  #get "fortune", controller: "my_examples", action: "feature1_method"

  get "fortune", controller: "my_examples", action: "rand_method"
end
