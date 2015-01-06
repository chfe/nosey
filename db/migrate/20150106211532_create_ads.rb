class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.text :text
      t.references :user, index: true
      t.references :tenant, index: true

      t.timestamps
    end
  end
end
