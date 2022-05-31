class AddUserToCostumes < ActiveRecord::Migration[7.0]
  def change
    add_reference :costumes, :user, foreign_key: true
  end
end
