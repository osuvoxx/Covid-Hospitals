class ChangeHelplineToString < ActiveRecord::Migration[6.1]
  def self.up
    change_column :covid_centers, :helpline, :string
  end

  def self.down
    change_column :covid_centers, :helpline, :integer
  end
end
