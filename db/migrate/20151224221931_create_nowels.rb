class CreateNowels < ActiveRecord::Migration
  def change
    create_table :nowels do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
