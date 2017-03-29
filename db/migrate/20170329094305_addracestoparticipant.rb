class Addracestoparticipant < ActiveRecord::Migration[5.0]
  def change
    add_column :participants, :races, :integer, default: 0
  end
end
