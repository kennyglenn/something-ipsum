class CreateWordBanks < ActiveRecord::Migration
  def change
    create_table :word_banks do |t|
      t.string :word

      t.timestamps
    end
  end
end
