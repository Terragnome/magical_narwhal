class User < ActiveRecord::Base
  EMAIL_REGEX=/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
  has_many :posts, dependent: :destroy

  validates :alias, length:{minimum: 3}

  validates_presence_of :email
  validates :email, length:{minimum: 3}
  validates_format_of :email, :with=>EMAIL_REGEX, :on=>:create
  validates_format_of :email, :with=>EMAIL_REGEX, :on=>:update
  
  validates_presence_of :name
  validates :name, length:{minimum: 3}

  def display_name
    self.alias ? self.alias : self.name
  end
end