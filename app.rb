require 'xcodeproj'
require 'pry'

# binding.pry

puts "Xcodeproj version"
puts Gem.loaded_specs["xcodeproj"].version

if Gem.loaded_specs["nanaimo"].nil?
	puts "Nanaimo not available"
else
	puts "Nanaimo version"
	puts Gem.loaded_specs["nanaimo"].version
	require 'nanaimo'
end

info_plist_path = 'Info.plist'
new_info_plist_path = 'Info.New.plist'

plist = Xcodeproj::Plist.read_from_path(info_plist_path)
plist['BogdanAndYoungsun'] = "YoungsunAndBogdan"

Xcodeproj::Plist.write_to_path(plist, new_info_plist_path)