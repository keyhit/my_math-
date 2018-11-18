class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :condition
      t.text :input
      t.text :result

      t.timestamps
    end
  end
end
