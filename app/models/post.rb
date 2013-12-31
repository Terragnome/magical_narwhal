class Post < ActiveRecord::Base
  belongs_to :user

  scope :active, -> {where(active:true)}
  
  def self.oldest
    @@oldest ||= Post.active.first
  end

  def self.newest
    @@newest ||= Post.active.last
  end

  def older
    @older ||= Post.active.where(['id<?', id]).last
  end

  def newer
    @newer ||= Post.active.where(['id>?', id]).first
  end

  def date
    created_at.to_date
  end

  def display_author
    user.display_name
  end
  
  def display_time
    date.strftime("%a, %m/%d/%y")
  end
end