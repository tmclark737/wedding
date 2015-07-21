

puts "Backup of old data complete."
Guest.destroy_all
Family.destroy_all



puts "Old tables destroyed"


ActiveRecord::Base.connection.reset_pk_sequence!('families')
ActiveRecord::Base.connection.reset_pk_sequence!('guests')

puts "Table sequences reset"

require 'csv'    



CSV.foreach(File.join(Rails.root, 'db', 'seeds_csv', 'family_seeds.csv'), :headers => true) do |row|
 Family.create!(row.to_hash)
end

CSV.foreach(File.join(Rails.root, 'db', 'seeds_csv', 'guest_seeds.csv'), :headers => true) do |row|
 Guest.create!(row.to_hash)
end


puts "New seed data created"


