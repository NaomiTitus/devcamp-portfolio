class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :percent_utilised

      t.timestamps
    end
  end
end
