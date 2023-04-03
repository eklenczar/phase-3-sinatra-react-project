class DessertsController < ApplicationController

    get "/desserts" do
        desserts = Dessert.all
        desserts.to_json
    end

end