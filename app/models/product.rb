class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates_presence_of :name, :price, :description, :size_type, :brand
  validates_numericality_of :price

  def self.search(search)
      if search
         where(["name LIKE ?", "%#{search}%"])
      else
	 all
      end
  end
end
