# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text
#  expires_on :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#
class Post < ApplicationRecord
  # Adding these for validation. This method was defined by the resource generator in the posts_controller file. In the application layout file, I wrote the code to actually call these methods on all pages
  validates(:title, { :presence => true }) 
  validates(:body, { :presence => true })
  validates(:expires_on, { :presence => true })
  validates(:board_id, { :presence => true })
  
end
