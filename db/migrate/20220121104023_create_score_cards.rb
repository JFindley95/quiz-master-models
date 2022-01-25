class CreateScoreCards < ActiveRecord::Migration[7.0]
  def change
    create_table :score_cards do |t|
      t.text :answers_given
      t.text :score
      t.references :quiz, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
