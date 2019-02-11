class FurnitureJob < ApplicationRecord
  belongs_to :job
  belongs_to :furniture
end
