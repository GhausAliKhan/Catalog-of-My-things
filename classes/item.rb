require 'date'

class Item
  attr_accessor :archived, :source, :publish_date, :id, :genre, :can_be_archived, :label

  def initialize(publish_date, id = nil)
    @id = id || Random.rand(1..1000)
    @publish_date = publish_date
  end
end
