class Post < ActiveRecord::Base
  belongs_to :user

  def self.search request,user
    if request == 'user'
      self.where(user_id: user).all
    else
      self.all
    end
  end
end
