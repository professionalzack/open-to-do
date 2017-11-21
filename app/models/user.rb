class User < ApplicationRecord

    has_many :lists


    validates_presence_of :username, :password

 end