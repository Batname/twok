namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    #make_microposts
    #make_relationships
    make_teams
  end
end

def make_users
  admin = User.create!(name: "Example User",
                       email: "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar",
                       admin: true)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_teams
  Team.create!(position:     1,
               name:    "Katerina",
               image: "/images/Katerina.jpg",
               visible: 1,
               content: "Katerina",)
  Team.create!(position:     2,
               name:    "Nikita",
               image: "/images/nikita.jpg",
               visible: 1,
               content: "Nikita",)
  Team.create!(position:     3,
               name:    "Irina",
               image: "/images/irina.jpg",
               visible: 1,
               content: "Irina",)
  Team.create!(position:     4,
               name:    "Julia",
               image: "/images/julia.jpg",
               visible: 1,
               content: "Julia",)
  Team.create!(position:     5,
               name:    "Join",
               image: "/images/join.jpg",
               visible: 1,
               content: "Join",)

end