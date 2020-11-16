class HighScore < ApplicationRecord

  validate :player_name_hate, :player_name_profanity, :player_name_sex

  def player_name_hate
    hate_filter = LanguageFilter::Filter.new matchlist: :hate
    if hate_filter.match? player then
      errors.add(:player, "Sajak says neigh to the following language: #{hate_filter.matched(player).join(', ')}")
    end
  end

  def player_name_profanity
    profanity_filter = LanguageFilter::Filter.new matchlist: :profanity
    if profanity_filter.match? player then
      errors.add(:player, "Sajak says neigh to the following language: #{profanity_filter.matched(player).join(', ')}")
    end
  end

  def player_name_sex
    sex_filter = LanguageFilter::Filter.new matchlist: :sex
    if sex_filter.match? player then
      errors.add(:player, "Sajak says neigh to the following language: #{sex_filter.matched(player).join(', ')}")
    end
  end

end
