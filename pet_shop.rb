def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  return pet_shop[:admin][:pets_sold] += amount
end

def stock_count(pet_shop)
return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  matching_pets = []
  for pet in pet_shop[:pets]
    if (pet[:breed] == breed)
      matching_pets.push(pet)
    end     
  end
  return matching_pets
end

def find_pet_by_name(pet_shop, name)
  # matching_name = []
  for name in pet_shop[:pets]
    if (name[:name] == name)
      # matching_name.push(name)
    # else puts nil
    end
  end  
  return name
end

