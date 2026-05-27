local PLUGIN = PLUGIN or {}

PLUGIN.name = "Un comando para rolear entorno"
PLUGIN.author = "Max"
PLUGIN.description = "Agrega un comando nuevo, hecho por mi, para rolear el entorno"

function PLUGIN:InitializedPlugins()
    print("[SEGUNDO PLUGIN] Plugin cargado correctamente :p")
end

ix.command.Add("do", {
    description = "Comando para rolear tu entorno",
    adminOnly = false,
    arguments = {
        ix.type.text
    },
    OnRun = function(self, client, text)
        local nombre = client:Nick()
        local msg = "[DO - " .. nombre .. "]: ".. text
        ix.chat.Send(client, "it", msg)
    end
})
