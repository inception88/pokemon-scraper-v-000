class Pokemon

  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    if id == nil
      @id = @@all.length + 1
    else
      @id = id
    end
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
    self.new(name: name, type: type, db: db, id: nil)
  end

  def self.find(id, db)

  end
end
