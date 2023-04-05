class MovieDetail < ApplicationRecord
    validates_presence_of :name_movie, :director,:actors,:genre,:duration,:language,:release_date,:introduction
    validates_uniqueness_of :introduction
end
