class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :nick
      t.string :topic
      t.text :content

      t.timestamps
    end
  end
end
