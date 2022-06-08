class Show < ActiveRecord::Base
    def self.highest_rating
        all.maximum(:rating)
    end

    def self.most_popular_show
        where(rating: highest_rating).first
    end

    def self.lowest_rating
        all.minimum(:rating)
    end

    def self.least_popular_show
        where(rating: lowest_rating).first
    end

    def self.ratings_sum
        sum(:rating)
    end

    def self.popular_shows
        all.where('rating > ?', 5)
    end

    def self.shows_by_alphabetical_order
        all.order(:name)
    end
end