class AdminController < ApplicationController
  include UsersHelper

  def home
    @users = User.all
    @admins = User.where(admin: true)
    @enfants = Enfant.all

    @produits = Produit.all
    @ventes = ""
    
  end
end
