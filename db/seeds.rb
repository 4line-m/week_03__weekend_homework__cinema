require 'pry'
require_relative '../models/customer.rb'
require_relative '../models/film.rb'

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
  })
cust_2.save()

film_1 = Film.new(
  {'title' => 'Chicken Run: Why Did Margaret Cross the Road?',
  'price' => '10'
  }
 )
film_1.save()

film_2 = Film.new(
  {'title' => 'Finding Margaret',
  'price' => '10'
  }
 )
film_2.save()

binding.pry
nil
