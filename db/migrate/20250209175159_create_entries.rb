class CreateEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :entries, id: :string do |t|
      t.text :title
      t.text :content
      t.text :md5_checksum
      t.timestamps
    end
  end
end
