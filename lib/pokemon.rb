class Pokemon

  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES ('#{name}', '#{type}')")
    new_id = db.execute(SELECT id FROM pokemon ORDER BY id DESC LIMIT 1)
    self.new(name: name, type: type, db: db, id: new_id)
  end

  def self.find(id, db)

  end
end
