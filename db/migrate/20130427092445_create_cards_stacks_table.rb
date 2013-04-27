class CreateCardsStacksTable < ActiveRecord::Migration
  def change
    create_table :cards_stacks do |t|
      t.references :card
      t.references :stack
    end
  end
end
