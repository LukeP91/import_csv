class BoardGame < ActiveRecord::Base
  belongs_to :category

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      category = Category.create(name: row["category"])
      BoardGame.create(name: row["name"], category: category)
    end
  end
end
