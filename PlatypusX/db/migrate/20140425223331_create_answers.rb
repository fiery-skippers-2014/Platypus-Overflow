class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |wooble|
      wooble.belongs_to :question
      wooble.string :response
      wooble.timestamps

    end
  end
end
