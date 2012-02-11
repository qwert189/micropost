class CreateMicropostNews < ActiveRecord::Migration
  def change
    create_table :micropost_news do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
