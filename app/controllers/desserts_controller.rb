class DessertsController < ApplicationController

     get "/desserts/available" do
        desserts = Dessert.all.select {|pie| !pie.customer_id}
        desserts.to_json
    end

    patch '/desserts/:id' do
        dessert = Dessert.find(params[:id])
        dessert.update(
          customer_id: params[:customer_id]
        )
        dessert.to_json(include: { customer: { include: :desserts } })
    end

    post '/desserts/available' do
        dessert = Dessert.create(
          flavor: params[:flavor],
          description: params[:description],
          price: params[:price],
        )
        dessert.to_json
    end

end