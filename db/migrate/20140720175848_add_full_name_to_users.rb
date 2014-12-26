class AddFullNameToUsers < ActiveRecord::Migration
  def change
	#change_table :users do |t|
		add_column(:users, :first_name, :string) #if !column_exists(:first_name)
		add_column(:users, :middle_initial, :string) #if !column_exists(:middle_initial)
		add_column(:users, :last_name, :string) #if !column_exists(:last_name)
	#end
  end
end
