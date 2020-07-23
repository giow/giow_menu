
-----------------------------------------------------------------------------------------------------------------------------------------
-- RG2 -- BY GIOW
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterServerEvent('gw:rg1')
AddEventHandler('gw:rg1',function()
    local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	
	local firstname = identity.firstname
	local name = identity.name
	local registration = identity.registration
	local age = identity.age
	local money = vRP.getMoney(user_id)
	local phone = identity.phone
    local banco = vRP.getBankMoney(user_id)
	local multas = vRP.getUData(user_id,"vRP:multas")
	local mymultas = json.decode(multas) or 0
	local groupv = vRP.getUserGroupByType(user_id,"job") or "Desempregado"
	local groupname = vRP.getGroupTitle(groupv)
	
	vRPclient.setDiv(source, "rg", "@import url(\"https://fonts.googleapis.com/css?family=Roboto&display=swap\");.clear{clear: both;}#DocumentSection {background-color:#ededed; width: 300px;min-height: 300px;border-radius: 5px;box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.08);text-align: center;position: absolute;right: 17%;bottom: 8%;font-family: 'Roboto';color: #3c3c3c;padding-bottom: 15px;z-index: 1;overflow: hidden;}#DocumentSection:before, #DocumentSection:after {content: ' ';position: absolute;width: 200%;height: 200%;}#DocumentSection:before {background-color: #a1acbf;top: -193%;left: -100%;transform: rotate(-5deg);z-index: 1;}#DocumentSection:after {background-color: #BBC8DE;top: -191%;left: -100%;transform: rotate(-6deg);z-index: 0;}#DocumentSection .avatar-img {width: 20%;margin: 50px auto 0 auto;}#DocumentSection .avatar-img img {width: 100%;}#DocumentSection .each-info {display: block;margin: 0;width: 70%;margin: 0 auto;}#DocumentSection .each-info.person-name {font-size: 20px;}#DocumentSection .each-info.person-age {font-size: 15px;}#DocumentSection .each-info.person-job {border-top: 1px solid rgba(0, 0, 0, 0.1);border-bottom: 1px solid rgba(0, 0, 0, 0.1);margin: 25px auto;padding: 10px 0;color: #708cba;font-size: 18px;}#DocumentSection .secondary-info {margin-top: 15px;}#DocumentSection .secondary-info .clear {margin-bottom: 3px;display: block;}#DocumentSection .secondary-info .each-info strong {float: left;font-weight: 300;}#DocumentSection .secondary-info .each-info span {float: right;font-weight: bold;color: #708cba;}","<div id=\"DocumentSection\"><div class=\"avatar-img\"><img src=\"https://www.moxtra.com/service/themes/images/default/avatar-single-360.png\"></div><div class=\"infos\"><div class=\"main-info\"><h1 class=\"each-info person-name\">"..name.." "..firstname.."</h1><h2 class=\"each-info person-age\">"..age.." anos</h2><h2 class=\"each-info person-job\">"..groupname.."</h2></div><div class=\"secondary-info\"><div class=\"each-info\"><strong>Passaporte:</strong><span class=\"person-id\">"..user_id.."</span></div><div class=\"clear\"></div><div class=\"each-info\"><strong>Registro: </strong><span class=\"person-passport\">"..registration.."</span></div><div class=\"clear\"></div><div class=\"each-info\"><strong>Telefone:</strong><span class=\"person-phone\">"..phone.."</span></div><div class=\"clear\"></div><div class=\"each-info\"><strong>Carteira:</strong><span class=\"person-phone\">$"..money.."</span></div><div class=\"clear\"></div></div></div></div>", "")
	if vRP.request(source,"Deseja fechar o seu RG?",90) then
		vRPclient.removeDiv(source, "rg")
	else
		vRPclient.removeDiv(source, "rg")
	end
end)

RegisterServerEvent('gw:banco1')
AddEventHandler('gw:banco1',function()
    local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	
	local firstname = identity.firstname
	local name = identity.name
	local registration = identity.registration
	local age = identity.age
	local money = vRP.getMoney(user_id)
	local phone = identity.phone
    local banco = vRP.getBankMoney(user_id)
	local multas = vRP.getUData(user_id,"vRP:multas")
	local mymultas = json.decode(multas) or 0
	local groupv = vRP.getUserGroupByType(user_id,"job") or "Desempregado"
	local groupname = vRP.getGroupTitle(groupv)
	
	vRPclient.setDiv(source, "banco", "@import url(\"https://fonts.googleapis.com/css?family=Roboto&display=swap\");.clear{clear: both;}#DocumentSection {background-color:#ededed; width: 300px;min-height: 300px;border-radius: 5px;box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.08);text-align: center;position: absolute;right: 17%;bottom: 8%;font-family: 'Roboto';color: #3c3c3c;padding-bottom: 15px;z-index: 1;overflow: hidden;}#DocumentSection:before, #DocumentSection:after {content: ' ';position: absolute;width: 200%;height: 200%;}#DocumentSection:before {background-color: #49de6c;top: -193%;left: -100%;transform: rotate(-5deg);z-index: 1;}#DocumentSection:after {background-color: #28c74d;top: -191%;left: -100%;transform: rotate(-6deg);z-index: 0;}#DocumentSection .avatar-img {width: 50%;margin: 50px auto 0 auto;}#DocumentSection .avatar-img img {width: 100%;}#DocumentSection .each-info {display: block;margin: 0;width: 70%;margin: 0 auto;}#DocumentSection .each-info.person-name {font-size: 20px;}#DocumentSection .each-info.person-age {font-size: 15px;}#DocumentSection .each-info.person-job {border-top: 1px solid rgba(0, 0, 0, 0.1);border-bottom: 1px solid rgba(0, 0, 0, 0.1);margin: 25px auto;padding: 10px 0;color: #28c74d;font-size: 18px;}#DocumentSection .secondary-info {margin-top: 15px;}#DocumentSection .secondary-info .clear {margin-bottom: 3px;display: block;}#DocumentSection .secondary-info .each-info strong {float: left;font-weight: 300;}#DocumentSection .secondary-info .each-info span {float: right;font-weight: bold;color: #28c74d;}","<div id=\"DocumentSection\"><div class=\"avatar-img\"><img src=\"https://vignette.wikia.nocookie.net/gtawiki/images/b/bd/Fleeca-GTAV-Logo.png/revision/latest?cb=20151005150527\"></div><div class=\"infos\"><div class=\"main-info\"><h1 class=\"each-info person-name\">"..name.." "..firstname.."</h1><h2 class=\"each-info person-age\">"..age.." anos</h2><h2 class=\"each-info person-job\">Seu banco</h2></div><div class=\"secondary-info\"><div class=\"each-info\"><strong>Passaporte:</strong><span class=\"person-id\">"..user_id.."</span></div><div class=\"clear\"></div><div class=\"each-info\"><strong>Banco:</strong><span class=\"person-phone\">$"..banco.."</span></div><div class=\"clear\"></div><div class=\"clear\"></div><div class=\"each-info\"><strong>Multas:</strong><span class=\"person-phone\">$"..mymultas.."</span></div><div class=\"clear\"></div></div></div></div>", "")
	if vRP.request(source,"Deseja fechar o seu RG?",90) then
		vRPclient.removeDiv(source, "banco")
	else
		vRPclient.removeDiv(source, "banco")
	end
end)
----------------------------------------------------------------------
