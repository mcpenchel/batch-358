require "yaml"

# How to write to a yaml file

array = [
  { cast: ["Tim Robbins", "Morgan Freeman"] },
  { director: "Frank Darabont" },
  { title: "The Shawshank Redemption" },
  { year: "1994" }
]

File.open("the_file.yml", "w") do |f|
  f.write(array.to_yaml)
end
