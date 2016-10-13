class AddBuildToKlasses < ActiveRecord::Migration
  def change
    add_reference :klasses, :build, index: true, foreign_key: true
  end
end
