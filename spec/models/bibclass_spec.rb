# frozen_string_literal: true

# == Schema Information
#
# Table name: bibclasses
#
#  id         :bigint           not null, primary key
#  name       :text             not null
#  note       :text
#  num        :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint           not null
#
require 'rails_helper'

RSpec.describe Bibclass, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
