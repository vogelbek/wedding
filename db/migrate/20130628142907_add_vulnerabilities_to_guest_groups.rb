class AddVulnerabilitiesToGuestGroups < ActiveRecord::Migration
  def change
    add_column :guest_groups, :vulnerabilities, :text
  end
end
