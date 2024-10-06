class AddDeviseToUsers < ActiveRecord::Migration[7.2]
  def self.up
    change_table :users do |t|
      ## Remove or comment out columns that already exist
      # t.string :email,              null: false, default: "" # Already exists
      # t.string :encrypted_password, null: false, default: "" # Already exists

      ## Recoverable
      # t.string   :reset_password_token # Already exists
      # t.datetime :reset_password_sent_at # Already exists

      ## Rememberable
      # t.datetime :remember_created_at # Already exists

      ## Trackable (Optional)
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable (Optional)
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable (Optional)
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    # Skip adding indexes on columns that already exist
    # add_index :users, :email,                unique: true # Already exists
    # add_index :users, :reset_password_token, unique: true # Already exists
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
