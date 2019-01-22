class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :question
      t.string :answer
      t.string :flag
      t.timestamps
    end
  end
end
