class RemoveReferenceFromHighScores < ActiveRecord::Migration[6.0]
  def change
    remove_reference :high_scores, :game, foreign_key: true
  end
end
