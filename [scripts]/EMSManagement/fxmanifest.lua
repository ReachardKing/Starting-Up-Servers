fx_version 'bodacious'

game 'gta5'

name "EMSManagement"

description "EMS Management (Still in development)"

author "Mackenzie_Rich"

version "1.0.0"

ui_page 'ui/EMSManagement.html'

files {
	"ui/EMSManagement.html",
	"ui/EMSManagement.js"
}

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}
