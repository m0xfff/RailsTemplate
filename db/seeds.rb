# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clearing existing students
Student.destroy_all

# Adding 10 students details
Student.create!(first_name: "John", last_name: "Doe", email: "john.doe@example.com", birth_date: Date.parse("1990-01-01"), gender: "Male")
Student.create!(first_name: "Jane", last_name: "Smith", email: "jane.smith@example.com", birth_date: Date.parse("1991-02-15"), gender: "Female")
Student.create!(first_name: "Alice", last_name: "Johnson", email: "alice.johnson@example.com", birth_date: Date.parse("1989-07-10"), gender: "Female")
Student.create!(first_name: "Bob", last_name: "Williams", email: "bob.williams@example.com", birth_date: Date.parse("1992-04-25"), gender: "Male")
Student.create!(first_name: "Eva", last_name: "Brown", email: "eva.brown@example.com", birth_date: Date.parse("1988-11-18"), gender: "Female")
Student.create!(first_name: "David", last_name: "Miller", email: "david.miller@example.com", birth_date: Date.parse("1993-09-05"), gender: "Male")
Student.create!(first_name: "Sophia", last_name: "Jones", email: "sophia.jones@example.com", birth_date: Date.parse("1990-12-20"), gender: "Female")
Student.create!(first_name: "Michael", last_name: "Wilson", email: "michael.wilson@example.com", birth_date: Date.parse("1987-06-30"), gender: "Male")
Student.create!(first_name: "Olivia", last_name: "Davis", email: "olivia.davis@example.com", birth_date: Date.parse("1994-03-12"), gender: "Female")
Student.create!(first_name: "Daniel", last_name: "Taylor", email: "daniel.taylor@example.com", birth_date: Date.parse("1989-08-22"), gender: "Male")
Student.create!(first_name: "Emily", last_name: "Moore", email: "emily.moore@example.com", birth_date: Date.parse("1991-05-08"), gender: "Female")
