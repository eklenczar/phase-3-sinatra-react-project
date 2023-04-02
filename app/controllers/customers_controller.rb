class CustomersController < ApplicationController

    get "/customers" do
        customers = Customer.all
        customers.to_json(include: :desserts)
    end
    
    delete '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.destroy
        customer.to_json
    end
    
    post '/customers' do
        customer = Customer.create(
          name: params[:name],
          phone: params[:phone],
        )
        customer.to_json
    end

    patch '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.update(
          name: params[:name],
          phone: params[:phone]
        )
        customer.to_json
      end
end