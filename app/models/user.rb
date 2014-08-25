class User   
  include Cequel::Record

  key :id, :timeuuid, auto: true
  column :fullname, :text
  column :email, :text
end