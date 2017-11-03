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
  shop[:admin][:pets_sold] += added_pets
end


def stock_count(shop)
  shop[:pets].count
end


def pets_by_breed(shop, breed)
  multiple_breeds = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      multiple_breeds.push(pet)
    end
  end
  return multiple_breeds
end


# def find_pet_by_name(shop, pet_name)
#  pet_names = {}
#  for pet in shop
#     if pet_name == shop[:pets][:name]
#       name:pet_name.to_s << pet_names
#     end
#   end
# end


# def remove_pet_by_name(shop, name)
# end
