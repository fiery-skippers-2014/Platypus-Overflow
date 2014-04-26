class CreateQuestion < ActiveRecord::Migration
	def change
		create_table :questions do |t|
			t.string :title
			t.string :body
      belongs_to :user
			t.timestamps
		end
	end
end
