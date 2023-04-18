class DessertsController < ApplicationController

    # get "/desserts" do
    #     desserts = Dessert.all
    #     desserts.to_json
    # end

    get "/desserts/available" do
        desserts = Dessert.all.select {|pie| !pie.customer_id}
        desserts.to_json
    end

    get "/desserts/sold" do
        dessert = Dessert.all.select {|pie| pie.customer_id}
        dessert.to_json(include: :customer)
    end

    patch '/desserts/:id' do
        dessert = Dessert.find(params[:id])
        dessert.update(
          customer_id: params[:customer_id]
        )
        dessert.to_json(include: :customer)
    end

end