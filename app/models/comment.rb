# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Comment < ApplicationRecord
  belongs_to :post, dependent: :destroy
  #belongs_to :user
  validates_presence_of :post_id
  validates_presence_of :body
end
