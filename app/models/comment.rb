# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string
#  response   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  shot_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_comments_on_shot_id  (shot_id)
#  index_comments_on_user_id  (user_id)
#
# Foreign Keys
#
#  shot_id  (shot_id => shots.id)
#  user_id  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :shot
end
