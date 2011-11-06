class CreateAttributs < ActiveRecord::Migration
  def self.up
    create_table :attributs do |t|
      t.integer :perso_id
      t.string :nom
      t.string :val

      t.timestamps
    end
  end

  def self.down
    drop_table :attributs
  end
end
