class Portfolio < ApplicationRecord
  validates_presence_of :body, :title, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end
  # Alternate method
  scope :ruby_on_rails_portfolio_item, -> {where(subtitle: 'Ruby on Rails')}
end
