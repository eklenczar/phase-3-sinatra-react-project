class DessertsController < ApplicationController

    get "/desserts" do
        desserts = Dessert.all
        desserts.to_json
    end

    get "/desserts/available" do
        desserts = Dessert.all.select {|pie| !pie.customer_id}
        desserts.to_json
    end

end