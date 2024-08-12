class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true
      t.float :rating
      t.text :comment
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
