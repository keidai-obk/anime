class CreateAnis < ActiveRecord::Migration[7.1]
  def change
    create_table :anis do |t|
      t.string :name
      t.text :story
      t.string :seasons
      t.string :what

      t.timestamps
    end
  end
end
