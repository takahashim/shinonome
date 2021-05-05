# frozen_string_literal: true

# == Schema Information
#
# Table name: book_people
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint           not null
#  person_id  :bigint           not null
#  role_id    :bigint           not null
#
FactoryBot.define do
  factory :book_person do
    book_id { 1 }
    person_id { 1 }
    role_id { 1 }
  end
end
