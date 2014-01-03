include ciscoucs

import '../data.pp'

# As a user I want to see proper error message when user enters invalid value(string of 33 characters) in input and executes the operation.

transport_ciscoucs { 'ciscoucs':
  username => "${ciscoucs['username']}",
  password => "${ciscoucs['password']}",
  server   => "${ciscoucs['server']}",
 
}


ciscoucs_serviceprofile { 'name':
  name        => "123456789123456789123456789123456",
  org         => "${ciscoucs_serviceprofile['org']}",
  dn         => "",
  ensure  => "${ciscoucs_serviceprofile['ensure']}",
  source_template => "${ciscoucs_serviceprofile['source_template']}",
  transport   => Transport_ciscoucs['ciscoucs'],
}