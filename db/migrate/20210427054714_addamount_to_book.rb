class AddamountToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :amount, :integer
  end
end
