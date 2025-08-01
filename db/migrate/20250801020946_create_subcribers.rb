class CreateSubcribers < ActiveRecord::Migration[8.0]
  def change
    create_table :subcribers do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
