class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :username, format: {with: /\A\w+\z/, message: "No spaces allowed"}

    has_many :posts
    has_many :comments
end
