class Movie < ActiveRecord::Base
  def self.all_ratings
    all = Array.new
    self.select("rating").uniq.each {|x| all.push(x.rating)}
    all.sort.uniq
  end
end