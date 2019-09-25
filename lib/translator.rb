require "yaml"
gov = YAML.load_file('government.yml')
 
gov
# =>
# {
#   "president" => "Barack Obama",
#   "vice president" => "Joe Biden",
#   "secretary of state" => "John Kerry",
#   "secretary of the treasury" => "Jacob Lew"
# }