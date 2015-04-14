class SuperController < ApplicationController

  def index
    @item = Item.find(1)

    expires_in 30.seconds, public: true
    fresh_when(@item)
  end


end
