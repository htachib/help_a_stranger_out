class Story < ActiveRecord::Base
  belongs_to :deed
  validates_presence_of :deed_id
end
