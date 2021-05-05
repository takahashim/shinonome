# frozen_string_literal: true

# == Schema Information
#
# Table name: book_workers
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  book_id        :bigint           not null
#  worker_id      :bigint           not null
#  worker_role_id :bigint           not null
#
class BookWorker < ApplicationRecord
  belongs_to :book
  belongs_to :worker
  belongs_to :worker_role
end
