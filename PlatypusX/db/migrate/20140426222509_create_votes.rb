class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count, default: 0
      t.belongs_to :user
      t.references :votable, polymorphic: true
      t.timestamps
    end
  end
end
