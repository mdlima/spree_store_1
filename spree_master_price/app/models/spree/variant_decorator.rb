module Spree
  Variant.class_eval do

    attr_accessible :is_master_price
    
    def price
      return product.master.price if is_master_price? && !is_master?

      self[:price]

    end

  end
end
