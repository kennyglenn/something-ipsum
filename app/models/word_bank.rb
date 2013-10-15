class WordBank < ActiveRecord::Base
  attr_accessible :word
  
  scope :random, order("RANDOM()")
  
  def self.sentence
    random.limit((4..16).to_a.sample).collect { |w| w.word }.join(' ').capitalize
  end

end
