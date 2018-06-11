class Post < ActiveRecord::Base


    VALID_CATEGORIES = ["Fiction", "Non-Fiction"]

    validates :title, presence: true
    validates :category, inclusion: { in: VALID_CATEGORIES }
    validates :content, length: { minimum: 100 }


end
