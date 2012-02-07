class AddServerIdToCheck < ActiveRecord::Migration
  def change
    add_column :checks, :server_id, :integer

  end
end
