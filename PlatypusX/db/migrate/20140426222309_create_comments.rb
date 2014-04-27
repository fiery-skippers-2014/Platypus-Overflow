class CreateComments < ActiveRecord::Migration
 def change
  create_table :comments do |t|
    t.belongs_to :answer
    t.string :body
    t.timestamps
  end
 end
end
