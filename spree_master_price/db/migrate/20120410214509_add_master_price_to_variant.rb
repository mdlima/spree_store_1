class AddMasterPriceToVariant < ActiveRecord::Migration
  def change
    add_column :spree_variants, :is_master_price, :boolean, :default => false
  end
end
