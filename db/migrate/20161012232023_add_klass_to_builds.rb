class AddKlassToBuilds < ActiveRecord::Migration
  def change
    add_reference :builds, :klass, index: true, foreign_key: true
    add_reference :builds, :user, index: true, foreign_key: true
  end
end
