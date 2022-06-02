class PagesController < ApplicationController
  #   root to: "users#home"
 def home
  @costumes = Costume.all
 end
end
