class CustomersController < ApplicationController

    get "/customers" do
        customers = Customer.all
        customers.to_json
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
end