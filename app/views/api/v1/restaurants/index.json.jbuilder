json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
  json.comments restaurant.comments, :id, :content
  json.owner_email restaurant.user.email

end
