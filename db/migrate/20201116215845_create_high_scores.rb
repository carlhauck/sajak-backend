class CreateHighScores < ActiveRecord::Migration[6.0]
  def change
    create_table :high_scores do |t|
      t.string :player
      t.integer :score

      t.timestamps
    end
    add_reference :high_scores, :game, foreign_key: true
  end
end
