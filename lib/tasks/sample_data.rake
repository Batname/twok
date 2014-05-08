namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_services
    make_teams
    make_projects
  end
end

def make_users
  admin = User.create!(name: "Example User",
                       email: "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar",
                       admin: true)
  99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_teams
  Team.create!(position: 1,
               name: "Katerina",
               image: "/images/teams/Katerina.jpg",
               visible: 1,
               content: "Katerina",
               teamclass: "katerina",)
  Team.create!(position: 2,
               name: "Nikita",
               image: "/images/teams/nikita.jpg",
               visible: 1,
               content: "Nikita",
               teamclass: "nikita",)
  Team.create!(position: 3,
               name: "Irina",
               image: "/images/teams/irina.jpg",
               visible: 1,
               content: "Irina",
               teamclass: "irina",)
  Team.create!(position: 4,
               name: "Julia",
               image: "/images/teams/julia.jpg",
               visible: 1,
               content: "Julia",
               teamclass: "julia",)
  Team.create!(position: 5,
               name: "Join",
               image: "/images/teams/join.jpg",
               visible: 1,
               content: "Join",
               teamclass: "join",)

end

def make_microposts
  users = User.all[0..5]
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user = users.first
  followed_users = users[2..50]
  followers = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end

def make_services
  Service.create!(position: 1,
                  name: "TABLE 1",
                  visible: 1,
                  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  title: "YOUR IMAGE",
                  head_li: "li1 lin_grad",
                  head_div: "your_image service_active",
                  main_div: "your_image_cont",)
  Service.create!(position: 2,
                  name: "TABLE 2",
                  visible: 1,
                  content: " Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  title: "YOUR AMUSEMENT",
                  head_li: "li2",
                  head_div: "your_amusement service_normal",
                  main_div: "your_amusement_cont",)
  Service.create!(position: 3,
                  name: "TABLE 3",
                  visible: 1,
                  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  title: "YOUR COMFORT",
                  head_li: "li3",
                  head_div: "your_comfort service_normal",
                  main_div: "your_comfort_cont",)
  Service.create!(position: 4,
                  name: "TABLE 4",
                  visible: 1,
                  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  title: "YOUR PRODUCTIVITY",
                  head_li: "li4",
                  head_div: "your_productivity service_normal",
                  main_div: "your_productivity_cont",)
end

def make_projects
  Project.create!(
      service_id: 1,
      position: 1,
      name: "Picture",
      image: "/images/projects/small.jpg",
      visible: 1,
      content: "Picture",)
  Project.create!(
      service_id: 2,
      position: 1,
      name: "Picture",
      image: "/images/projects/small.jpg",
      visible: 1,
      content: "Picture",)
  Project.create!(
      service_id: 1,
      position: 3,
      name: "Picture",
      image: "/images/projects/small.jpg",
      visible: 1,
      content: "Picture",)
  Project.create!(
      service_id: 1,
      position: 4,
      name: "Picture",
      image: "/images/projects/small.jpg",
      visible: 1,
      content: "Picture",)
  Project.create!(
      service_id: 1,
      position: 5,
      name: "Picture",
      image: "/images/projects/small.jpg",
      visible: 1,
      content: "Picture",)
  Project.create!(
      service_id: 1,
      position: 6,
      name: "Picture",
      image: "/images/projects/small.jpg",
      visible: 1,
      content: "Picture",)
  Project.create!(
      service_id: 1,
      position: 7,
      name: "Picture",
      image: "/images/projects/small.jpg",
      visible: 1,
      content: "Picture",)
end