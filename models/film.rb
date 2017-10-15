require_relative("../db/sql_runner")

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @price = options['price'].to_i
  end

  def save()
    sql = "
      INSERT INTO films
      (
        title,
        price
      )
      VALUES
      (
        $1,
        $2
      )
      RETURNING *
    "
    values = [@title, @price]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
    sql = "
      SELECT * FROM films
    "
    values = []
    SqlRunner.run(sql, values).map {|film| Film.new(film)}
  end

  def delete()
    sql = "
      DELETE FROM films
      WHERE id = $1
    "
    values = [@id]
    SqlRunner.run(sql, values)
    return Film.all()
  end

  def self.delete_all()
    sql = "
      DELETE FROM films
    "
    values = []
    SqlRunner.run(sql, values)
    return Film.all()
  end

  def update()
    sql = "
      UPDATE films
      SET
      (
        title,
        price
      ) =
      (
        $1,
        $2
      )
      WHERE id = $3
      RETURNING *
    "
    values = [@title, @price, @id]
    result = SqlRunner.run(sql, values)[0]
    return Film.new(result)
  end

end
