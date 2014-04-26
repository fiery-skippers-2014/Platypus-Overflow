class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.string :response
      belongs_to :question
      belongs_to :user
      t.timestamps

    end
  end
end
