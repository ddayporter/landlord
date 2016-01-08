require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

require "pg"
require "active_record"
require "pry"

require_relative "../models/apartment"
require_relative "../models/tenant"

require_relative "connection.rb"


Apartment.destroy_all
Tenant.destroy_all
# destroys existing data in database

cambridge = Apartment.create(address: '2805 Arlington Blvd', monthly_rent: 1550, sqft: 1000, num_beds: 1, num_baths: 1)
meridian = Apartment.create(address: '1401 N Taft St', monthly_rent: 1750, sqft: 990, num_beds: 1, num_baths: 1)
mountpleasant = Apartment.create(address: '1824 Irving Street NW', monthly_rent: 2500, sqft: 1800, num_beds: 3, num_baths: 1)

cambridge.tenants.create(name: "Kristin Wisoky", age: 24, gender: "Female")
cambridge.tenants.create(name: "Hilbert Effertz", age: 31, gender: "Male")
meridian.tenants.create(name: "Dangelo Bogisich", age: 61, gender: "Female")
meridian.tenants.create(name: "Benton Abernathy", age: 56, gender: "Female")
mountpleasant.tenants.create(name: "Merritt Durgan", age: 35, gender: "Female")
mountpleasant.tenants.create(name: "Enola Sauer V", age: 32, gender: "Female")
mountpleasant.tenants.create(name: "Ethan Sauer", age: 2, gender: "Male")
cambridge.tenants.create(name: "Rachel Porter", age: 32, gender: "Female")
cambridge.tenants.create(name: "Zach Porter", age: 31, gender: "Male")
