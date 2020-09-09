class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :content
      t.references :booking, null: false, foreign_key: true
      t.references :reviewer, index: true, foreign_key: { to_table: :users }
      t.references :reviewee, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
