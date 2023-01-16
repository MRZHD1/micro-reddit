class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.string :username

      t.timestamps
    end

    create_table :posts do |t|
      t.belongs_to :user
      
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
