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

(1..15).each do |number|
  project = Project.find_or_initialize_by(title: "Project - #{number}")

  project.assign_attributes(description: DEFAULT_DESCRIPTION, status: 'draft')
  project.save
end
