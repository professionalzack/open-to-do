class Item < ApplicationRecord
    belongs_to :list
    belongs_to :user

    validates_presence_of :title
end
