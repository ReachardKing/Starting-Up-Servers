fx_version 'bodacious'

game 'gta5'

name "Clockon"

description "My UI Clockon System"

author "Mackenzie_Rich"

version "1.0.0"

ui_page "html/main.html"

files {
    "html/main.html",
    "html/main.js"
}

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

export 'Clockon'
export 'ShowNUI'

server_scripts {
	'server/*.lua'
}
