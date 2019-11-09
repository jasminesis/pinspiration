class PinsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :pins_tags do |t|
      t.references :pin
      t.references :tag
      t.timestamps
    end
  end
end
