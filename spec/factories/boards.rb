FactoryGirl.define do
  factory :board do
    embed "MyText"
    name "MyString"
    course_id 1
    kind 1
  end
end
