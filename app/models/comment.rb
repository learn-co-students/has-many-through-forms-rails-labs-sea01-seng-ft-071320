class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attr)
    self.user = User.find_or_create_by(username: user_attr[:username]) unless user_attr[:username] == ''
  end

end
