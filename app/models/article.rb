class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum:6, maximum:100}
    validates :description, presence: true, length: {minimum:10, maximum:300}
    # Articles belongs to one User
    belongs_to :user
end