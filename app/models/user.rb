class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  EMAIL_REGEX=/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_presence_of :nickname
  validates :nickname, length:{minimum: 3}

  validates_presence_of :email
  validates :email, length:{minimum: 3}
  validates_format_of :email, :with=>EMAIL_REGEX, :on=>:create
  validates_format_of :email, :with=>EMAIL_REGEX, :on=>:update
  
  validates_presence_of :name
  validates :name, length:{minimum: 3}
  
  #has_secure_password
  validates :password, :presence => { :on => :create }

  has_many :posts, dependent: :destroy

  acts_as_tagger
end