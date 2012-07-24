class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :status
      t.text :status_detail
      t.references :user
      t.references :project

      t.timestamps
    end
  end
end
