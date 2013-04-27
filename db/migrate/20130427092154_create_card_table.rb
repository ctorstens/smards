class CreateCardTable < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :user
      t.string :answer
    end
  end
end
