class ImportBoardGamesFromCSV
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      category = Category.create(name: row["category"])
      BoardGame.create(name: row["name"], category: category)
    end
  end
end
