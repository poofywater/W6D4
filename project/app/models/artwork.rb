
class Artwork < ApplicationRecord
validates :title, :image_url, :artist_id, uniqueness: true

    belongs_to :artist,
        class_name: :User,
        primary_key: :id,
        foreign_key: :artist_id

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer

    has_many :artwork_shares
        
end