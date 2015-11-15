class CreateMesseges < ActiveRecord::Migration
  def change
    create_table :messeges do |t|
      t.string :name
      t.string :body
      t.timestamps null: false
    end
  end
end
