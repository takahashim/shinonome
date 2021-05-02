# == Schema Information
#
# Table name: proofreads
#
#  id          :bigint           not null, primary key
#  address     :text
#  book_copy   :text
#  book_print  :text
#  email       :text
#  memo        :text
#  refbook     :text
#  sts1        :text
#  sts2        :text
#  url         :text
#  worker_kana :text
#  worker_name :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  book_id     :bigint
#  bookfile_id :bigint
#  person_id   :bigint
#  worker_id   :bigint
#
class Proofread < ApplicationRecord
  belongs_to :book
  belongs_to :bookfile
  belongs_to :worker
end