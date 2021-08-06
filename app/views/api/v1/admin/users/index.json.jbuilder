json.array! @users do |user|
  json.id user.id
  json.email user.email

  # json.partial! partial: 'profiles/profile', collection: @profiles, as: :profile

  json.profile do
    json.id user.profile.id
    json.name user.profile.name
    json.last_name user.profile.last_name
    json.male user.profile.male

    if user.profile.image
      json.image do
        json.id user.profile.image.id
        json.name user.profile.image.name
        json.picture user.profile.image.picture
      end
    end

    unless user.phones.empty?
      user.phones do |phone|
        json.id phone.id
        json.number phone.number
      end
    end
  end
end
