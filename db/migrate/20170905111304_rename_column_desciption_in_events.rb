class RenameColumnDesciptionInEvents < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :desciption, :description
  end
end
