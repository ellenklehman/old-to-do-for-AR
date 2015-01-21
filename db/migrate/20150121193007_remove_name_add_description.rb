class RemoveNameAddDescription < ActiveRecord::Migration
  def change
    remove_column(:tasks, :name, :string)
    add_column(:tasks, :description, :string)
  end
end
