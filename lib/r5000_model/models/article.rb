module R5000Model
  class Article < Base
    validates :user_id, :title, :content, presence: true

    belongs_to :user
  end
end
