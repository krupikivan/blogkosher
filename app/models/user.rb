class User < ApplicationRecord
    # User has many articles
    has_many :articles
end
