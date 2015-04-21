class CreateWeibos < ActiveRecord::Migration
  def change
    create_table :weibos do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
