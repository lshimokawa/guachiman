class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.boolean :successful
      t.float :duration

      t.timestamps
    end
  end
end
