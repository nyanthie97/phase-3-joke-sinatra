class User < ActiveRecord::Base
    has_many :reviews
    has_many :jokes, through: :reviews
end