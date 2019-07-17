class AddReferencesProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :taggings, :product, foreign_key: true
  end
end
