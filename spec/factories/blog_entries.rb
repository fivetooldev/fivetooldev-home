# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_entry do
    author 'Geoff Harcourt'
    title 'A Blog Post'
    content 'I am a blog post.'
  end
end