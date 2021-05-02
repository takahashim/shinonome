# == Schema Information
#
# Table name: workers
#
#  id         :bigint           not null, primary key
#  email      :text
#  name       :text
#  name_kana  :text
#  note       :text
#  sortkey    :text
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
FactoryBot.define do
  factory :worker do
    name { "MyText" }
    name_kana { "MyText" }
    email { "MyText" }
    url { "MyText" }
    note { "MyText" }
    user_id { 1 }
    sortkey { "MyText" }
  end
end