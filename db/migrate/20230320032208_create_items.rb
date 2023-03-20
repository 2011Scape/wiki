class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :name
      t.string :examine
      t.string :destroy_message
      t.boolean :tradeable
      t.integer :weight
      t.integer :attack_speed
      t.integer :attack_stab
      t.integer :attack_slash
      t.integer :attack_crush
      t.integer :attack_magic
      t.integer :attack_range
      t.integer :defence_stab
      t.integer :defence_slash
      t.integer :defence_crush
      t.integer :defence_magic
      t.integer :defence_range
      t.integer :prayer
      t.integer :range_strength
      t.integer :magic_damage

      t.timestamps
    end
  end
end
