class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.name_of_your_field :date
      t.integer :pair

      t.timestamps
    end
  end
end
