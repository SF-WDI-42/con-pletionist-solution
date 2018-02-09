class CreateConferences < ActiveRecord::Migration[5.1]
  def change
    create_table :conferences do |t|
      t.text :name
      t.text :location

      t.timestamps
    end
  end
end
