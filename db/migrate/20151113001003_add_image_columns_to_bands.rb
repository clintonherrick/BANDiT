class AddImageColumnsToBands < ActiveRecord::Migration
  def up
      add_attachment :bands, :image
    end

    def down
      remove_attachment :bands, :image
    end
  end
