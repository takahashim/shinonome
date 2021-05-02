# == Schema Information
#
# Table name: sites
#
#  id         :bigint           not null, primary key
#  email      :text
#  name       :text
#  note       :text
#  owner_name :text
#  updated_by :integer
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :site do
    name { "MyText" }
    url { "MyText" }
    owner_name { "MyText" }
    email { "MyText" }
    note { "MyText" }
    updated_by { 1 }
  end
end