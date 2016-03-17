class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|

      t.timestamps null: false
    end
  end
end
