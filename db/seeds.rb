require 'pry'
require_relative '../models/customer.rb'

Customer.delete_all

cust_1 = Customer.new(
  {'name' => 'Aline',
  'funds' => '500'
  }
 )
cust_1.save()

cust_2 = Customer.new(
  {'name' => 'Patrick',
  'funds' => '500'
  }
 )
cust_2.save()

binding.pry
nil
