class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :wins_count, default: 0
      t.integer :losses_count, default: 0
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
