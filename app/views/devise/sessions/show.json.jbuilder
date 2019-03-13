p 222222222222222222
if user_signed_in?
  json.user do
    json.(current_user, :id, :email)
  end
end