# array methods

sample_array = [2, 325, 2, 12415, -29]
puts sample_array
puts sample_array.sort
sample_array.push(10304)
puts sample_array.pop
puts sample_array.shift

word = "Chris Clayman"
name = word.split(" ")
puts name

# .join()
puts name.join("! ")


# hashes
info = {
  "name"=>"Chris",
  "age"=>26,
  "height"=>73
}
puts info["name"]
info["city"]=>"San Francisco"
puts info
info.delete('city')

# nil for nonexistent in hash
city = info['city']
puts city
