class ArtworkShare < ApplicationRecord
    belongs_to :viewer,
        class_name: :User
        
    belongs_to :artwork

    
        

end