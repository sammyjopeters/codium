class Recommendation < ActiveRecord::Base

# validates :user_id, uniqueness: {scope: :post}

belongs_to :user
belongs_to :post

end
