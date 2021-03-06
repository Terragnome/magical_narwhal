class Post < ActiveRecord::Base
  belongs_to :user

  before_validation :set_posted_at
  before_validation :set_post_id

  scope :active, -> {where(active:true)}
  
  acts_as_taggable

  def previous
    @previous ||= Post.active.where(['id<?', id]).last
  end

  def next
    @next ||= Post.active.where(['id>?', id]).first
  end

  def date
    posted_at ? posted_at.to_date : created_at.to_date
  end
  
  def display_time
    date.strftime("%A, %m/%d/%y")
  end
  
  private

  def set_posted_at
    self.posted_at = Time.now if self.active && self.posted_at.blank?
  end

  def set_post_id
    self.post_id=Post.maximum(:post_id)+1 if self.active && self.post_id.blank?
  end
end