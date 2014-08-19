class User
  include Cequel::Record

  devise :database_authenticatable, :registerable, :recoverable

  key :id, :timeuuid, auto: true

  ## User info
  column :nickname, :text

  ## Database authenticatable
  column :email, :text
  column :encrypted_password, :text

  ## Recoverable
  column :reset_password_token, :text
  column :reset_password_sent_at, :timestamp

  ## Rememberable
  column :remember_created_at, :timestamp

  ## Trackable
  column :sign_in_count, :int
  column :current_sign_in_at, :timestamp
  column :last_sign_in_at, :timestamp
  column :current_sign_in_ip, :text
  column :last_sign_in_ip, :text

  timestamps
end
