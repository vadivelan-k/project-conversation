# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

DEFAULT_DESCRIPTION = "Project description goes here " * 5
DEFAULT_PASSWORD = 'password'

(1..15).each do |number|
  project = Project.find_or_initialize_by(title: "Project - #{number}")

  project.assign_attributes(description: DEFAULT_DESCRIPTION, status: 'draft')
  project.save
end

user = User.find_or_initialize_by(email: 'admin@gmail.com')
user.assign_attributes(password: DEFAULT_PASSWORD, password_confirmation: DEFAULT_PASSWORD)
user.save
puts "User created with email: #{user.email} and password: #{DEFAULT_PASSWORD}"
