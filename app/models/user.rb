require 'devise' 
class User   
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  key :id, :timeuuid, auto: true
  column :fullname, :text
  column :email, :text
end
