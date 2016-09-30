# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  handle     :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :comments
  has_many :posts
end
