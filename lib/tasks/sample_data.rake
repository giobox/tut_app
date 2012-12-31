namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Giovanni Coia",
                 email: "giovanni@thecoia.com",
                 password: "cr954Epe",
                 password_confirmation: "cr954Epe")
    admin.toggle!(:admin)
    
    end
end