def pet_shop_name(shop)
  shop[:name]
end


def total_cash(shop)
  shop[:admin][:total_cash]
end


def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] = total_cash(shop) + amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, added_pets)
  shop[:admin][:pets_sold] = pets_sold(shop) + added_pets
end
