class Portfolio < ApplicationRecord
  validates_presence_of :body, :title, :main_image, :thumb_image
end
