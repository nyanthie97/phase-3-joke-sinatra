class CreateJokes < ActiveRecord::Migration[6.1]
  def change
    create_table :jokes do |t| 
      t.string :category
      t.string :body
    end
  end
end
