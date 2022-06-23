class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :body, :title, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end
  # Alternate method
  scope :ruby_on_rails_portfolio_item, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', widht: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', widht: '200')
  end
end
