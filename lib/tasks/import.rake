namespace :import do
  task posts: :environment do
    100.times do
      Post.create!(
        title: Faker::Name.title,
        content: Faker::Markdown.random,
      )
    end
  end
end
