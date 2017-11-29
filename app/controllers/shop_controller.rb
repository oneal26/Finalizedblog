class ShopController < ApplicationController
	def all_items
		@items = Item.all
	end





end
