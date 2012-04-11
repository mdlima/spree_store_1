module Spree
  Variant.class_eval do

    attr_accessible :is_master_price
    
    def price
      return self[:price] unless is_master_price?
      return product.master.price unless is_master?

    end

  end
end
