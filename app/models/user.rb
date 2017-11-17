class User < ApplicationRecord

    has_many :lists
    has_many :items, through: :lists


    validates_presence_of :username, :password

    has_secure_password
 end