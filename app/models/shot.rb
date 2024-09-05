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
class Shot < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :user_shot
  # mount_uploader :user_shot, UserShotUploader
  is_impressionable
  acts_as_votable  
end
