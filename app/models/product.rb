class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true 
  validates :image_url, :format => {
    :with => %r{\.(gif|fpg|png)$}i, 
    :message => 'Must be a gif, jpg, or png'
}
end
