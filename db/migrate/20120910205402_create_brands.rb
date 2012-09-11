class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :fb_user
      t.string :brand
      t.string :description
      t.string :tags

      t.timestamps
    end
  end
end
