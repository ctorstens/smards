class CreateStacksTable < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.string :name
    end
  end
end
