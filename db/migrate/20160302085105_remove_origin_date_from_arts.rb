class RemoveOriginDateFromArts < ActiveRecord::Migration
  def change
    remove_column :arts, :date_origin, :date
  end
end
