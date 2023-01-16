class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.timestamps

      t.string :body
      t.belongs_to :user 
      t.belongs_to :post
    end
  end
end
