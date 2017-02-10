class Url < ActiveRecord::Base
  before_save :shorten

  def shorten(str = 6)
    a = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    a[1..str].shuffle.join
    self.short_url = a[1..str].shuffle.join
  end
end
