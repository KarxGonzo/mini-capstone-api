class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :tax, :image_url, :description, :is_discounted?, :inventory, :supplier_id
end
