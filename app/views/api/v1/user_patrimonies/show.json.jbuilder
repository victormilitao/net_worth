json.array! @user_patrimonies do |user_patrimony|
  json.user user_patrimony.user.to_builder
  json.stock user_patrimony.stock.to_builder
  json.user_patrimony user_patrimony.to_builder
end
