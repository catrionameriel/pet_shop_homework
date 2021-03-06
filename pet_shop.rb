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


def find_pet_by_name(shop, pet_name)
 for pet in shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return
end


def remove_pet_by_name(shop, name)
 for pet in shop[:pets]
   if name == pet[:name]
     shop[:pets].delete(pet)
   end
 end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end


def customer_pet_count(customers)
  customers[:pets].count
end


def add_pet_to_customer(customer, purchased_pet)
  customer[:pets].push(purchased_pet)
end


def customer_can_afford_pet(customer, pet_want_to_buy)
  if customer[:cash]>= pet_want_to_buy[:price]
    return true
  else
    return false
  end
end


def sell_pet_to_customer(shop, pet_want_to_buy, customer)
 if (pet_want_to_buy != nil) && (customer_can_afford_pet(customer,  pet_want_to_buy) == true)
  customer[:pets].push(pet_want_to_buy)
  shop[:pets].delete(pet_want_to_buy)
  # Is there a way to take an item out of an array and put it into another without two lines?
  shop[:admin][:pets_sold]+= 1

  money = pet_want_to_buy[:price]
  shop[:admin][:total_cash]+= money
  end
end
