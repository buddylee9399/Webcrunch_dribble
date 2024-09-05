# == Schema Information
#
# Table name: shots
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_shots_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class ShotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
