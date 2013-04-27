class CreateQuestionsTableMigration < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :card
      t.string :description, :null => false
    end
  end
end
