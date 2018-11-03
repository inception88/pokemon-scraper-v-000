class Pokemon

  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    if id == nil
      @id = @@al.length + 1
    else
      @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, db, id = nil)
    self.new(name: name, type: type, db: db, id: id)
  end

end
