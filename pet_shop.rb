require ('pry-byebug')

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
  matching_name = Hash.new
  for pet in pet_shop[:pets]
    if (pet[:name] == name)
      matching_name[:name] = name
      return matching_name
    else pet = nil
    end
  end 
  return pet
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete_if { |pet| pet[:name] == name}
  end
  puts pet_shop
end
