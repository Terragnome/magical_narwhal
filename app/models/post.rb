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

  def display_name
    user.alias ? user.alias : user.name
  end
end