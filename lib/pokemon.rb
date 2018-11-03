class Pokemon

  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all < self
  end

  def self.save(name, type, db)
    self.initialize(name: name, type: type, db: db)
  end

end
