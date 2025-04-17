class CreateServiceKeys < ActiveRecord::Migration[8.0]
  def change
    create_table :service_keys do |t|
      t.references :service, null: false, foreign_key: true
      t.string :api_key, null: false
      t.string :hash_key, null: false
      t.string :status, null: false, default: 'active'
      t.text :notes

      t.timestamps
    end

    add_index :service_keys, :api_key, unique: true
  end
end
