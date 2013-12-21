class Post < ActiveRecord::Base
  belongs_to :user

  scope :active, -> {where(active:true)}
  
  def previous
    @previous ||= Post.active.where(['id<?', id]).last
  end

  def next
    @next ||= Post.active.where(['id>?', id]).first
  end
end