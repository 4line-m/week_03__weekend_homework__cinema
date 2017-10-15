require 'pry'
require_relative '../models/customer.rb'
require_relative '../models/film.rb'
require_relative '../models/ticket.rb'

Customer.delete_all
Film.delete_all

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

ticket_1 = Ticket.new(
  {'customer_id' => cust_1.id,
  'film_id' => film_1.id
  }
 )
ticket_1.save()

ticket_2 = Ticket.new(
  {'customer_id' => cust_1.id,
  'film_id' => film_2.id
  }
 )
ticket_2.save()

ticket_3 = Ticket.new(
  {'customer_id' => cust_2.id,
  'film_id' => film_1.id
  }
 )
ticket_3.save()

binding.pry
nil
