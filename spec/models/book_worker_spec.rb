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
# Indexes
#
#  index_book_workers_on_book_id         (book_id)
#  index_book_workers_on_worker_id       (worker_id)
#  index_book_workers_on_worker_role_id  (worker_role_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (worker_id => workers.id)
#  fk_rails_...  (worker_role_id => worker_roles.id)
#
require 'rails_helper'

RSpec.describe BookWorker, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
