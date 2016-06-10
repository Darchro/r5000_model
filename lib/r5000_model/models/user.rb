module R5000Model
  class User < Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :trackable, :validatable

    enum role: { admin: 0, normal: 1 }

    has_many :articles
  end
end
