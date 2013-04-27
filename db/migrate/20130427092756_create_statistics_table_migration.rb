class CreateStatisticsTableMigration < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.references :question
      t.boolean :correct, :null => false
      t.timestamps
    end
  end
end
