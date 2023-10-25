class CreatePugSubApiOwnershipTransferreds < ActiveRecord::Migration[7.1]
  def change
    create_table :pug_sub_api_ownership_transferreds do |t|
      t.belongs_to :pug_evm_log, null: false, foreign_key: true
      t.belongs_to :pug_evm_contract, null: false, foreign_key: true
      t.belongs_to :pug_network, null: false, foreign_key: true
      t.string :e_previous_owner
      t.string :e_new_owner

      t.timestamps
    end
    add_index :pug_sub_api_ownership_transferreds, :e_previous_owner
    add_index :pug_sub_api_ownership_transferreds, :e_new_owner
  end
end
