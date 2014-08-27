class Logup
include Cequel::Record

  key :id, :timeuuid, auto: true
  column :fullname, :text
  column :email, :text
    
  validates :email, presence: true

end