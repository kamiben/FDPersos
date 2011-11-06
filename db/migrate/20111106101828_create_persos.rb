class CreatePersos < ActiveRecord::Migration
  def self.up
    create_table :persos do |t|
      t.string :nom
      t.string :joueur

      t.timestamps
    end
  end

  def self.down
    drop_table :persos
  end
end
