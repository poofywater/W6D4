class User < ApplicationRecord
    validates :name, :email, presence: true

    has_many :artworks,
        class_name: :Artwork,
        primary_key: :id,
        foreign_key: :artist_id

    has_many :shared_arts

end