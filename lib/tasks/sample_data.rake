namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Colby Anderson",
                         email: "colby.anderson@eagles.oc.edu",
                         password: "anderc",
                         password_confirmation: "anderc")
    admin.toggle!(:admin)
  end
end