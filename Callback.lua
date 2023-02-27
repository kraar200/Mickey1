function RunBank(msg)
plugin = dofile("./Bank.lua")
if plugin and plugin.TheMero and msg then
results = plugin.TheMero(msg)
end
end
function RunCallBack(data)
if data and data.luatele and data.luatele == "updateChatMember" then
UserCheck = data.new_chat_member.member_id.user_id
local Result = bot.getUser(data.actor_user_id)
if data.new_chat_member.status.luatele == "chatMemberStatusLeft" and data.old_chat_member.status.luatele == "chatMemberStatusCreator" then
local Get_Chat = bot.getChat(data.chat_id)
local Info_Chats = bot.getSupergroupFullInfo(data.chat_id)
local UserInfo = bot.getUser(data.actor_user_id)
send(data.actor_user_id,0,'\nليه تركت قروبك\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\nLink ▸ ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true) 
send(data.chat_id,0,'\nمالك القروب غادر 😨\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\n️',"md",true) 
end
if data.new_chat_member.status.luatele == "chatMemberStatusCreator" and data.old_chat_member.status.luatele == "chatMemberStatusLeft" then
local UserInfo = bot.getUser(data.actor_user_id)
send(data.chat_id,0,'\nالقروب مايسوى بدونك 😍 ( المالك )\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\n️',"md",true) 
end
if data.new_chat_member.status.luatele == "chatMemberStatusLeft" and data.old_chat_member.status.luatele == "chatMemberStatusAdministrator" then
if data.actor_user_id == UserCheck and tonumber(TheMero) ~= UserCheck then
local Get_Chat = bot.getChat(data.chat_id)
local Info_Chats = bot.getSupergroupFullInfo(data.chat_id)
local UserInfo = bot.getUser(data.actor_user_id)
send(data.actor_user_id,0,'\nليه تركت رتبتك ( مشرف ) وغادرت\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\nLink ▸ ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n️',"md",true) 
send(data.chat_id,0,'\nمشرف غادر القروب 😞\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\n️',"md",true) 
end
end
if data.new_chat_member.status.luatele == "chatMemberStatusLeft" and data.old_chat_member.status.luatele == "chatMemberStatusMember" then
if not Redis:get(TheMero.."gdbye"..data.chat_id) then
if data.actor_user_id == UserCheck and tonumber(TheMero) ~= UserCheck then
local Get_Chat = bot.getChat(data.chat_id)
local Info_Chats = bot.getSupergroupFullInfo(data.chat_id)
local UserInfo = bot.getUser(data.actor_user_id)
send(data.actor_user_id,0,'\nحي الله من زار وخفف\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\nLink ▸ ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n️',"md",true) 
send(data.chat_id,0,'\nحي الله من زار وخفف\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\n️',"md",true) 
end
end
end
if data.new_chat_member.member_id.user_id == tonumber(TheMero) or data.old_chat_member.member_id.user_id == tonumber(TheMero) then
if data.new_chat_member.status.rights.can_delete_messages == true or data.old_chat_member.status.rights.can_delete_messages == true then
local chat_id = data.chat_id
local who_promot = data.actor_user_id
--code start
if Redis:sismember(TheMero..'Black:listBan:',chat_id) then ---check if ban
send(chat_id,0,"\n*⇜ هذه القروب محظور سوف اغادر جاوو*","md",true)  
bot.leaveChat(chat_id)
end ---end check if ban
local Info_Chats = bot.getSupergroupFullInfo(chat_id) ---check if count is true
if tonumber(Info_Chats.member_count) < tonumber((Redis:get(TheMero..'Mero:Num:Add:Bot') or 0)) then
send(chat_id,0,'• عدد الاعضاء قليل لا يمكن تفعيل القروب\n يجب ان يكون اكثر من '..Redis:get(TheMero..'Mero:Num:Add:Bot'),"md",true)
bot.leaveChat(chat_id)
end---end check if count is true
if not Redis:get(TheMero.."Mero:BotFree") then
return send(chat_id,0,"\n⇜ الوضع الخدمي تم تعطيله من قبل مطور البوت ","md",true)  
end
if not Redis:sismember(TheMero.."Mero:ChekBotAdd", chat_id) then ---done active
local Get_Chat = bot.getChat(chat_id)
local Info_Chats = bot.getSupergroupFullInfo(chat_id)
local UserInfo = bot.getUser(who_promot)
----
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
send(Sudo_Id,0,'\n⇜ تم تفعيل قروب جديد \n⇜ من قبل : ['..UserInfo.first_name..'](tg://user?id='..who_promot..')\n⇜ معلومات القروب :\n⇜ عدد الاعضاء : '..Info_Chats.member_count..'\n⇜ عدد الادمنيه : '..Info_Chats.administrator_count..'\n⇜ عدد المطرودين : '..Info_Chats.banned_count..'\n⇜ عدد المقيدين : '..Info_Chats.restricted_count..'\n⇜ الرابط : ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n⇜ ايدي القروب : `'..chat_id..'`',"md",true, false, false, false, reply_markup)
-----
Redis:set(TheMero.."Mero:Alzwag:Chat"..chat_id,"true")
Redis:set(TheMero.."Mero:Aldel:Chat"..chat_id,"true")
Redis:set(TheMero.."NSFW:"..chat_id,"true")
Redis:set(TheMero..'tagallgroup'..chat_id,'open') 
Redis:set(TheMero.."Mero:Status:Link"..chat_id,true) 
Redis:set(TheMero.."Mero:Status:Games"..chat_id,true) 
Redis:set(TheMero.."replayallbot"..chat_id,true)
Redis:set(TheMero.."rebomsg"..chat_id,true)
Redis:set(TheMero.."Mero:AlThther:Chat"..chat_id,"true")
Redis:set(TheMero.."Mero:Status:Welcome"..chat_id,true) 
Redis:set(TheMero.."Mero:AlThther:Chat"..chat_id,"true")
Redis:set(TheMero..'tagall@all'..chat_id,'open') 
Redis:set(TheMero.."Mero:Status:IdPhoto"..chat_id,true) 
Redis:del(TheMero.."spammkick"..chat_id)
Redis:set(TheMero.."Mero:Lock:edit"..chat_id,true) 
Redis:sadd(TheMero.."Mero:ChekBotAdd",chat_id)
Redis:set(TheMero.."Mero:Status:Id"..chat_id,true)
Redis:set(TheMero.."Mero:Status:Reply"..chat_id,true)
Redis:set(TheMero.."Mero:Status:ReplySudo"..chat_id,true)
Redis:set(TheMero.."Mero:Status:BanId"..chat_id,true)
Redis:set(TheMero.."Mero:Status:SetId"..chat_id,true) 
-----
local Info_Members = bot.getSupergroupMembers(chat_id, "Administrators", "*", 0, 200)
local List_Members = Info_Members.members
for k, v in pairs(List_Members) do
if Info_Members.members[k].bot_info == nil then
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
Redis:sadd(TheMero.."Mero:TheBasicsQ:Group"..chat_id ,v.member_id.user_id) 
else
Redis:sadd(TheMero.."Mero:Addictive:Group"..chat_id ,v.member_id.user_id) 
end
end
end
-----
local txt = '⇜ من 「 ['..UserInfo.first_name..'](tg://user?id='..who_promot..')⁪⁬‌‌‌‌ 」\n⇜ تم تفعيل المجموعة ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..') تلقائياً\n\n⇜ ارسل /Commands لعرض اوامر البوت'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اعدادات الحماية',data =IdUser..'/'.. 'NoNextSeting'}, 
},
}
}
return send(chat_id, 0 , txt, 'md', true , false, false, false, reply_markup)
end ---end done active
--code end
end
end
end

if data and data.luatele and data.luatele == "updateNewInlineCallbackQuery" then
local Text = bot.base64_decode(data.payload.data)
if Text and Text:match('/Hmsa1@(%d+)@(%d+)/(%d+)') then
local ramsesadd = {string.match(Text,"^/Hmsa1@(%d+)@(%d+)/(%d+)$")}
if tonumber(data.sender_user_id) == tonumber(ramsesadd[1]) or tonumber(ramsesadd[2]) == tonumber(data.sender_user_id) then
local inget = Redis:get(TheMero..'hmsabots'..ramsesadd[3]..data.sender_user_id)
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape(inget)..'&show_alert=true')
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('𖦹 هذه الهمسه ليست لك 𖦹')..'&show_alert=true')
end
end
end
if data and data.luatele and data.luatele == "updateNewInlineQuery" then
local Text = data.query
if Text and Text:match("^(.*) @(.*)$")  then
local username = {string.match(Text,"^(.*) @(.*)$")}
local UserId_Info = bot.searchPublicChat(username[2])
if UserId_Info.id then
local idnum = math.random(1,64)
local input_message_content = {message_text = 'هذي الهمسة للحلو ( [@'..username[2]..'] )\nهو اللي يقدر يشوفها 📧', parse_mode = 'Markdown'}	
local reply_markup = {inline_keyboard={{{text = 'لرؤية الهمسة', callback_data = '/Hmsa1@'..data.sender_user_id..'@'..UserId_Info.id..'/'..idnum}}}}	
local resuult = {{type = 'article', id = idnum, title = 'هذه همسه سرية الى [@'..username[2]..']', input_message_content = input_message_content, reply_markup = reply_markup}}	
https.request("https://api.telegram.org/bot"..Token..'/answerInlineQuery?inline_query_id='..data.id..'&results='..JSON.encode(resuult))
Redis:set(TheMero..'hmsabots'..idnum..UserId_Info.id,username[1])
Redis:set(TheMero..'hmsabots'..idnum..data.sender_user_id,username[1])
end
end
end
if data and data.luatele and data.luatele == "updateSupergroup" then
local Get_Chat = bot.getChat('-100'..data.supergroup.id)
if data.supergroup.status.luatele == "chatMemberStatusBanned" then
Redis:srem(TheMero.."Mero:ChekBotAdd",'-100'..data.supergroup.id)
return send(Sudo_Id,0,'\n⇜ تم طرد البوت من قروب جديد \n⇜ اسم القروب : '..Get_Chat.title..'\n⇜ ايدي القروب : `-100'..data.supergroup.id..'`\n⇜ تم مسح جميع البيانات المتعلقة بالقروب',"md")
end
elseif data and data.luatele and data.luatele == "updateMessageSendSucceeded" then
local msg = data.message
local Chat = msg.chat_id
if msg.content.text then
text = msg.content.text.text
end
if msg.content.sticker then
Redis:sadd(TheMero.."Mero:all:sticker"..msg.chat_id, msg.id)
Redis:scard(TheMero.."Mero:all:sticker"..msg.chat_id)  
end
if msg.content.video_note or msg.content.video then
Redis:sadd(TheMero.."Mero:all:video"..msg.chat_id, msg.id)
Redis:scard(TheMero.."Mero:all:video"..msg.chat_id)  
end
if msg.content.document then
Redis:sadd(TheMero.."Mero:all:docu"..msg.chat_id, msg.id)
Redis:scard(TheMero.."Mero:all:docu"..msg.chat_id)  
end
if msg.content.audio then
Redis:sadd(TheMero.."Mero:all:audio"..msg.chat_id, msg.id)
Redis:scard(TheMero.."Mero:all:audio"..msg.chat_id)  
end
if msg.content.voice_note then
Redis:sadd(TheMero.."Mero:all:voice"..msg.chat_id, msg.id)
Redis:scard(TheMero.."Mero:all:voice"..msg.chat_id)  
end
if msg.content.photo then
Redis:sadd(TheMero.."Mero:all:photo"..msg.chat_id, msg.id)
Redis:scard(TheMero.."Mero:all:photo"..msg.chat_id)  
end
if msg.content.animation then
Redis:sadd(TheMero.."Mero:all:anim"..msg.chat_id, msg.id)
Redis:scard(TheMero.."Mero:all:anim"..msg.chat_id)  
end
if msg.content.video_note or msg.content.document or msg.content.audio or msg.content.video or msg.content.voice_note or msg.content.sticker or msg.content.animation or msg.content.photo then
Redis:sadd(TheMero.."Mero:allM"..msg.chat_id, msg.id)
if Redis:get(TheMero.."Mero:Status:Del:Media"..msg.chat_id) then    
local Numbardel = Redis:get(TheMero.."Mero:allM:numdel"..msg.chat_id) or 200
local gmedia = Redis:scard(TheMero.."Mero:allM"..msg.chat_id)  
if tonumber(gmedia) >= tonumber(Numbardel) then
local liste = Redis:smembers(TheMero.."Mero:allM"..msg.chat_id)
for k,v in pairs(liste) do
local Mesge = v
if Mesge then
t = "⇜ تم مسح ( "..k.." ) من الوسائط تلقائياً\n⇜ يمكنك تعطيل الميزة باستخدام الامر ( `تعطيل المسح التلقائي` )"
bot.deleteMessages(msg.chat_id,{[1]= Mesge})
end
end
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '⇜ من ['..UserInfo.first_name..'](tg://user?id='..msg.sender_id.user_id..')\n'
send(msg.chat_id,msg.id, Teext..t,"md",true)
Redis:del(TheMero.."Mero:allM"..msg.chat_id)
end
end
end
if msg.content.video_note then
if msg.content.video_note.video.remote.id == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif msg.content.photo then
if msg.content.photo.sizes[1].photo.remote.id then
idPhoto = msg.content.photo.sizes[1].photo.remote.id
elseif msg.content.photo.sizes[2].photo.remote.id then
idPhoto = msg.content.photo.sizes[2].photo.remote.id
elseif msg.content.photo.sizes[3].photo.remote.id then
idPhoto = msg.content.photo.sizes[3].photo.remote.id
end
if idPhoto == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif msg.content.sticker then 
if msg.content.sticker.sticker.remote.id == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif msg.content.voice_note then 
if msg.content.voice_note.voice.remote.id == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif msg.content.video then 
if msg.content.video.video.remote.id == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif msg.content.animation then 
if msg.content.animation.animation.remote.id ==  Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif msg.content.document then
if msg.content.document.document.remote.id == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif msg.content.audio then
if msg.content.audio.audio.remote.id == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
elseif text then
if text == Redis:get(TheMero.."Mero:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(TheMero.."Mero:PinMsegees:"..msg.chat_id)
end
end
elseif data and data.luatele and data.luatele == "updateNewMessage" then
if data.message.content.luatele == "messageChatDeleteMember" or data.message.content.luatele == "messageChatAddMembers" or data.message.content.luatele == "messagePinMessage" or data.message.content.luatele == "messageChatChangeTitle" or data.message.content.luatele == "messageChatJoinByLink" then
if Redis:get(TheMero.."Mero:Lock:tagservr"..data.message.chat_id) then
bot.deleteMessages(data.message.chat_id,{[1]= data.message.id})
end
end 
if tonumber(data.message.sender_user_id) == tonumber(TheMero) then
return false
end
if chat_type(data.message.chat_id) == "GroupBot" and Redis:sismember(TheMero.."Mero:ChekBotAdd",data.message.chat_id) then
 msg = data.message
local msg_chat_id = msg.chat_id
local msg_reply_id = msg.reply_to_message_id
local msg_user_send_id = msg.sender_id.user_id
local msg_id = msg.id
local text = nil
if msg.date and msg.date < tonumber(os.time() - 15) then
print("->> Old Message End <<-")
return false
end
if msg.content.text then
text = msg.content.text.text
end
if tonumber(msg.sender_id.user_id) == tonumber(TheMero) then
print('This is reply for Bot')
return false
end
if msg.sender_id.luatele == "messageSenderChat" then
if Redis:sismember(TheMero.."Mero:SilentGroup:Group"..msg_chat_id,msg.sender_id.chat_id) then
bot.deleteMessages(msg.chat_id,{[1]= msg.id})
end
if Redis:get(TheMero.."Mero:Lock:SenderChat"..msg_chat_id) then
local m = Redis:get(TheMero.."chadmin"..msg_chat_id) 
if msg.sender_id.chat_id == tonumber(m) then
return false
else
bot.deleteMessages(msg.chat_id,{[1]= msg.id})
end
end
return false
end
if tonumber(msg.sender_id.user_id) == 779108237 then
msg.Name_Controller = '𝗠𝗬𝗧𝗛️'
msg.The_Controller = 1
elseif tonumber(msg.sender_id.user_id) == 2089102006 then
msg.Name_Controller = 'Master🎖️'
msg.The_Controller = 1
elseif The_ControllerAll(msg.sender_id.user_id) == true then  
msg.The_Controller = 1
msg.Name_Controller = 'Dev🎖️'
elseif Redis:sismember(TheMero.."Mero:DevelopersQ:Groups",msg.sender_id.user_id) == true then
msg.The_Controller = 2
msg.Name_Controller = 'Myth🎖️️'
elseif Redis:sismember(TheMero.."Mero:Developers:Groups",msg.sender_id.user_id) == true then
msg.The_Controller = 3
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:Developer:Bot:Reply"..msg.chat_id) or 'Myth'
elseif Redis:sismember(TheMero.."Mero:MalekAsase:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 444
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:PresidentQ:Group:Reply"..msg.chat_id) or 'المالك'
elseif Redis:sismember(TheMero.."Mero:TheBasicsQ:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 44
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:PresidentQ:Group:Reply"..msg.chat_id) or 'المالك'
elseif Redis:sismember(TheMero.."Mero:TheBasics:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 4
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:President:Group:Reply"..msg.chat_id) or 'المنشئ الاساسي'
elseif Redis:sismember(TheMero.."Mero:Originators:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 5
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:Constructor:Group:Reply"..msg.chat_id) or 'المنشئ'
elseif Redis:sismember(TheMero.."Mero:Managers:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 6
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:Manager:Group:Reply"..msg.chat_id) or 'المدير'
elseif Redis:sismember(TheMero.."Mero:Addictive:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 7
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:Admin:Group:Reply"..msg.chat_id) or 'الادمن'
elseif Redis:sismember(TheMero.."Mero:Distinguished:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 8
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:Vip:Group:Reply"..msg.chat_id) or 'مميز'
elseif tonumber(msg.sender_id.user_id) == tonumber(TheMero) then
msg.The_Controller = 9
else
msg.The_Controller = 10
msg.Name_Controller = Redis:get(TheMero..'Mero:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(TheMero.."Mero:Mempar:Group:Reply"..msg.chat_id) or 'عضو'
end  
if msg.The_Controller == 1 then  
msg.ControllerBot = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 then
msg.DevelopersQ = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 then
msg.Developers = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 9 then
msg.MalekAsase = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 9 then
msg.TheBasicsQ = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 9 then
msg.TheBasics = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 9 then
msg.Originators = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 6 or msg.The_Controller == 9 then
msg.Managers = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 6 or msg.The_Controller == 7 or msg.The_Controller == 9 then
msg.Addictive = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 6 or msg.The_Controller == 7 or msg.The_Controller == 8 or msg.The_Controller == 9 then
msg.Distinguished = true
end
RunBank(msg)
------------------------------------------------------------------
end
File_Bot_Run(data.message,data.message)
elseif data and data.luatele and data.luatele == "updateMessageEdited" then
-- data.chat_id -- data.message_id
local Message_Edit = bot.getMessage(data.chat_id, data.message_id)
if Message_Edit.sender_id.user_id == TheMero then
print('This is Edit for Bot')
return false
end
File_Bot_Run(Message_Edit,Message_Edit)
if tonumber(Message_Edit.sender_id.user_id) == 779108237 then
data.The_Controller = 1
elseif tonumber(Message_Edit.sender_id.user_id) == 2089102006 then
data.The_Controller = 1
elseif The_ControllerAll(Message_Edit.sender_id.user_id) == true then  
data.The_Controller = 1
elseif Redis:sismember(TheMero.."Mero:DevelopersQ:Groups",Message_Edit.sender_id.user_id) == true then
data.The_Controller = 2
elseif Redis:sismember(TheMero.."Mero:Developers:Groups",Message_Edit.sender_id.user_id) == true then
data.The_Controller = 3
elseif Redis:sismember(TheMero.."Mero:TheBasicsQ:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 44
elseif Redis:sismember(TheMero.."Mero:TheBasics:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 4
elseif Redis:sismember(TheMero.."Mero:Originators:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 5
elseif Redis:sismember(TheMero.."Mero:Managers:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 6
elseif Redis:sismember(TheMero.."Mero:Addictive:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 7
elseif Redis:sismember(TheMero.."Mero:Distinguished:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 8
elseif tonumber(Message_Edit.sender_id.user_id) == tonumber(TheMero) then
data.The_Controller = 9
else
data.The_Controller = 10
end  
if data.The_Controller == 1 then  
data.ControllerBot = true
end
if data.The_Controller == 1 or data.The_Controller == 2 then
data.DevelopersQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 then
data.Developers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 9 then
data.TheBasicsQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 9 then
data.TheBasics = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 9 then
data.Originators = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 9 then
data.Managers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 9 then
data.Addictive = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 8 or data.The_Controller == 9 then
data.Distinguished = true
end
local UserInfo = bot.getUser(Message_Edit.sender_id.user_id)
local names = FlterBio(UserInfo.first_name) 
local monsha = Redis:smembers(TheMero.."Mero:TheBasicsQ:Group"..data.chat_id) 
Redis:incr(TheMero..'Mero:Num:Message:Edit'..data.chat_id..Message_Edit.sender_id.user_id)
if Message_Edit.content.luatele == "messageText" then
if Redis:get(TheMero.."Mero:Lock:edittext"..data.chat_id) then
if not data.Distinguished then
bot.deleteMessages(data.chat_id,{[1]= data.message_id})
if Redis:get(TheMero..'Mero:AlThther:Chat'..data.chat_id)  then
local UserInfo = bot.getUser(Message_Edit.sender_id.user_id)
local Teext = '「 ['..UserInfo.first_name..'](tg://user?id='..Message_Edit.sender_id.user_id..') 」\n'
return send(data.chat_id,0,Teext..'⇜ ممنوع التعديل \n ✧',"md")
end
end
end
end
if not data.Originators and Message_Edit.sender_id.user_id ~= tonumber(TheMero) then
if Message_Edit.content.luatele == "messageContact" or Message_Edit.content.luatele == "messageVideoNote" or Message_Edit.content.luatele == "messageDocument" or Message_Edit.content.luatele == "messageAudio" or Message_Edit.content.luatele == "messageVideo" or Message_Edit.content.luatele == "messageVoiceNote" or Message_Edit.content.luatele == "messageAnimation" or Message_Edit.content.luatele == "messagePhoto" then
if Redis:get(TheMero.."Mero:Lock:edit"..data.chat_id) then
if #monsha ~= 0 then 
local ListMembers = '\n⇜ تاك للمالكين \n ـــــــــــــــــــــــــــــــــــــــــ\n'
for k, v in pairs(monsha) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers..""..k.." - [@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers..""..k.." - ["..v.."](tg://user?id="..v..")\n"
end
end
local tecxt = ListMembers.."\n\n".."\n⇜ المستخدم ["..names.." ](tg://user?id="..Message_Edit.sender_id.user_id..")"..
"\n⇜ قام بتعديل الميديا"
send(data.chat_id,0,tecxt,"md")
end
bot.deleteMessages(data.chat_id,{[1]= data.message_id})
end
end
end
elseif data and data.luatele and data.luatele == "updateNewCallbackQuery" then
-- data.chat_id
-- data.payload.data
-- data.sender_user_id
Text = bot.base64_decode(data.payload.data)
IdUser = data.sender_user_id
ChatId = data.chat_id
Msg_id = data.message_id
if tonumber(IdUser) == 779108237 then
data.The_Controller = 1
elseif tonumber(IdUser) == 2089102006 then
data.The_Controller = 1
elseif The_ControllerAll(IdUser) == true then  
data.The_Controller = 1
elseif Redis:sismember(TheMero.."Mero:DevelopersQ:Groups",IdUser) == true then
data.The_Controller = 2
elseif Redis:sismember(TheMero.."Mero:Developers:Groups",IdUser) == true then
data.The_Controller = 3
elseif Redis:sismember(TheMero.."Mero:TheBasicsQ:Group"..ChatId,IdUser) == true then
data.The_Controller = 44
elseif Redis:sismember(TheMero.."Mero:TheBasics:Group"..ChatId,IdUser) == true then
data.The_Controller = 4
elseif Redis:sismember(TheMero.."Mero:Originators:Group"..ChatId,IdUser) == true then
data.The_Controller = 5
elseif Redis:sismember(TheMero.."Mero:Managers:Group"..ChatId,IdUser) == true then
data.The_Controller = 6
elseif Redis:sismember(TheMero.."Mero:Addictive:Group"..ChatId,IdUser) == true then
data.The_Controller = 7
elseif Redis:sismember(TheMero.."Mero:Distinguished:Group"..ChatId,IdUser) == true then
data.The_Controller = 8
elseif tonumber(IdUser) == tonumber(TheMero) then
data.The_Controller = 9
else
data.The_Controller = 10
end  
if data.The_Controller == 1 then  
data.ControllerBot = true
end
if data.The_Controller == 1 or data.The_Controller == 2 then
data.DevelopersQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 then
data.Developers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 9 then
data.TheBasicsQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 9 then
data.TheBasics = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 9 then
data.Originators = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 9 then
data.Managers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 9 then
data.Addictive = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 8 or data.The_Controller == 9 then
data.Distinguished = true
end
calc_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'ON', data = IdUser..'ON'},{text = 'DEL', data = IdUser..'DEL'},{text = 'AC', data = IdUser..'rest'},{text = 'OFF', data = IdUser..'OFF'},
},
{
{text = '^', data = IdUser..'calc&^'},{text = '√', data = IdUser..'calc&√'},{text = '(', data = IdUser..'calc&('},{text = ')', data = IdUser..'calc&)'},
},
{
{text = '7', data = IdUser..'calc&7'},{text = '8', data = IdUser..'calc&8'},{text = '9', data = IdUser..'calc&9'},{text = '÷', data = IdUser..'calc&/'},
},
{
{text = '4', data = IdUser..'calc&4'},{text = '5', data = IdUser..'calc&5'},{text = '6', data = IdUser..'calc&6'},{text = 'x', data = IdUser..'calc&*'},
},
{
{text = '1', data = IdUser..'calc&1'},{text = '2', data = IdUser..'calc&2'},{text = '3', data = IdUser..'calc&3'},{text = '-', data = IdUser..'calc&-'},
},
{
{text = '0', data = IdUser..'calc&0'},{text = '.', data = IdUser..'calc&.'},{text = '+', data = IdUser..'calc&+'},{text = '=', data = IdUser..'equal'},
},
{
{text = 'Louis', url = 't.me/Y88F8'}, 
},
}
}
if Text and Text:match('(%d+)calc&(.*)') then
local result = {Text:match('(%d+)calc&(.*)')}
local num = result[2]
local sendrr = result[1]
if tonumber(IdUser) == tonumber(sendrr) then
local get = Redis:get(TheMero..IdUser..ChatId.."num")
if get then
tf = get 
else
tf = "" 
end
local txx = tf..num
Redis:set(TheMero..IdUser..ChatId.."num",txx)
bot.editMessageText(ChatId,Msg_id,"⇜ اجراء عملية حسابية \n "..txx, 'html', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)equal') then
local sendrr = Text:match('(%d+)equal')
if tonumber(IdUser) == tonumber(sendrr) then
local math = Redis:get(TheMero..IdUser..ChatId.."num")
if math then
Noah = io.popen("gcalccmd '"..math.."'"):read('*a')
res = "⇜ ناتج "..math.." هو :\n "..Noah
else
res = "⇜ لا يوجد ما يمكن حسابه"
end
bot.editMessageText(ChatId,Msg_id,res , 'md', false, false, calc_markup)
Redis:del(TheMero..IdUser..ChatId.."num")
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)DEL') then
local sendrr = Text:match('(%d+)DEL')
if tonumber(IdUser) == tonumber(sendrr) then
local get = Redis:get(TheMero..IdUser..ChatId.."num")
if get then
gxx = ""
for a = 1, string.len(get)-1 do  
gxx = gxx..(string.sub(get, a,a)) 
end
Redis:set(TheMero..IdUser..ChatId.."num",gxx)
bot.editMessageText(ChatId,Msg_id,"⇜ اجراء عملية حسابية \n "..gxx, 'md', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "⇜ لا يوجد مايمكن حذفه", true)
end
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)ON') then
local sendrr = Text:match('(%d+)ON') 
if tonumber(IdUser) == tonumber(sendrr) then
Redis:del(TheMero..IdUser..ChatId.."num")
bot.editMessageText(ChatId,Msg_id,"⇜ تم تشغيل الالة الحاسبة" , 'md', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)OFF') then
local sendrr = Text:match('(%d+)OFF')
if tonumber(IdUser) == tonumber(sendrr) then
Redis:del(TheMero..IdUser..ChatId.."num")
local reply_markupp = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'ON', data = IdUser..'ON'},
},
}
}
bot.editMessageText(ChatId,Msg_id,"⇜ تم تعطيل الالة الحاسبة \n⇜ اضغط ON لتشغيلها " , 'md', false, false, reply_markupp)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)rest') then
local sendrr = Text:match('(%d+)rest')
if tonumber(IdUser) == tonumber(sendrr) then
Redis:del(bot..IdUser..ChatId.."num")
bot.editMessageText(ChatId,Msg_id," " , 'md', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/UnKed') then
local UserId = Text:match('(%d+)/UnKed')
if tonumber(UserId) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ التحقق ليس لك", true)
end
bot.setChatMemberStatus(ChatId,UserId,'restricted',{1,1,1,1,1,1,1,1})
return edit(ChatId,Msg_id,"⇜ تم التحقق ، شكراً لانضمامك", 'md', false)
end
if Text and Text:match('(.*)hms(.*)') then
local anubis = {Text:match('(.*)hms(.*)')}
if tonumber(IdUser) == tonumber(anubis[1]) then
local chat_id = Redis:get(TheMero.."hms:"..anubis[2].."chat_id")
local to_id = Redis:get(TheMero.."hms:"..anubis[2].."to")
local msg_id = Redis:get(TheMero.."hms:"..anubis[2].."msg_id")
local sender_name = bot.getUser(anubis[1]).first_name
local to_name = bot.getUser(to_id).first_name
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'لرؤية الهمسة', data = "sender:"..anubis[1].."to:"..to_id.."hmsa:"..anubis[2]
}
},
}
}
send(chat_id,msg_id,"⇜ ياحلو 「 ["..to_name.."](tg://user?id="..to_id..") 」\n⇜ لديك همسة سرية من「 ["..sender_name.."](tg://user?id="..anubis[1]..") 」\n⇜ انت فقط من يستطيع رؤيتها","md",true,false,false,false,reply_markup)
edit(ChatId,Msg_id,"⇜ تم ارسال الهمسة", 'md',false)
Redis:del(TheMero.."hms:"..anubis[1])
end
end
if Text and Text:match('(.*)hms_no(.*)') then
local anubis = {Text:match('(.*)hms_no(.*)')}
if tonumber(IdUser) == tonumber(anubis[1]) then
Redis:del(TheMero.."hms:"..anubis[2].."chat_id")
Redis:del(TheMero.."hms:"..anubis[2].."to")
Redis:del(TheMero.."hms:"..anubis[2].."msg_id")
Redis:del(TheMero.."hms:"..anubis[1])
edit(ChatId,Msg_id,"⇜ تم الالغاء", 'md',false)
end end
if Text and Text:match("sender:(.*)to:(.*)hmsa:(.*)") then
local anubis = {Text:match("sender:(.*)to:(.*)hmsa:(.*)")}
if tonumber(IdUser) == tonumber(anubis[1]) or tonumber(IdUser) == tonumber(anubis[2]) then
local hmsa = Redis:get(TheMero.."hms:"..anubis[3].."text:")
https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape(hmsa).."&show_alert=true")
end
end

if Text and Text:match("(%d+)/idomery/(%d+)") then
local UserId = {Text:match("(%d+)/idomery/(%d+)")}
if tonumber(IdUser) == tonumber(UserId[1]) then
var(UserId)
Redis:set(TheMero.."zogte"..ChatId..UserId[1],UserId[2])
Redis:set(TheMero.."zogte"..ChatId..UserId[2],UserId[1])
Redis:sadd(TheMero.."zogatall"..ChatId,UserId[1])
local UserInfo = bot.getUser(UserId[1])
local Teext = "- ["..FlterBio(UserInfo.first_name).."](tg://user?id="..UserId[1]..")"
local UserInfo2 = bot.getUser(UserId[2])
local Teext2 = "- ["..UserInfo2.first_name.."](tg://user?id="..UserId[2]..")"
return edit(ChatId,Msg_id,"⇜ لقد قبل : "..Teext.."\n⇜ بالزواج من : "..Teext2, "md")
end
end
if Text and Text:match("(%d+)/idonotmery/(%d+)") then
local UserId = {Text:match("(%d+)/idonotmery/(%d+)")}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:del(TheMero.."zogte"..ChatId..UserId[1])
Redis:del(TheMero.."zogte"..ChatId..UserId[2])
Redis:srem(TheMero.."zogatall"..ChatId,UserId[1])
local UserInfo = bot.getUser(UserId[1])
local Teext = "- ["..UserInfo.first_name.."](tg://user?id="..UserId[1]..")"
local UserInfo2 = bot.getUser(UserId[2])
local Teext2 = "- ["..UserInfo2.first_name.."](tg://user?id="..UserId[2]..")"
return edit(ChatId,Msg_id,"⇜ لم يقبل : "..Teext.."\n⇜ بالزواج من : "..Teext2, "md")
end
end
if Text and Text:match("(%d+)/tlakkk/(%d+)") then
local UserId = {Text:match("(%d+)/tlakkk/(%d+)")}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:del(TheMero.."zogte"..ChatId..UserId[1])
Redis:del(TheMero.."zogte"..ChatId..UserId[2])
Redis:srem(TheMero.."zogatall"..ChatId,UserId[1])
local UserInfo = bot.getUser(UserId[1])
local Teext = "- ["..UserInfo.first_name.."](tg://user?id="..UserId[1]..")"
local UserInfo2 = bot.getUser(UserId[2])
local Teext2 = "- ["..UserInfo2.first_name.."](tg://user?id="..UserId[2]..")"
return edit(ChatId,Msg_id,"⇜ تم طلاق : "..Teext.."\n⇜ من الزوج : "..Teext2, "md")
end
end

if Text and Text:match('(%d+)/Nzlne') then
local UserId = Text:match('(%d+)/Nzlne')
if tonumber(IdUser) == tonumber(UserId) then
Redis:srem(TheMero.."Mero:Distinguished:Group"..ChatId,IdUser)
Redis:srem(TheMero.."Mero:Addictive:Group"..ChatId,IdUser)
Redis:srem(TheMero.."Mero:Managers:Group"..ChatId,IdUser)
Redis:srem(TheMero.."Mero:Originators:Group"..ChatId,IdUser)
Redis:srem(TheMero.."Mero:TheBasics:Group"..ChatId,IdUser)
Redis:srem(TheMero.."Mero:Developers:Groups",IdUser) 
Redis:srem(TheMero.."Mero:TheBasicsQ:Group"..ChatId,IdUser)
return edit(ChatId,Msg_id,"\n⇜ تم تنزيلك من جميع الرتب", 'md')
end
end
if Text and Text:match('(%d+)/noNzlne') then
local UserId = Text:match('(%d+)/noNzlne')
if tonumber(IdUser) == tonumber(UserId) then
return edit(ChatId,Msg_id,"\n⇜ تم الالغاء", 'md')
end
end
if Text and Text:match('(%d+)/statusTheBasicsz/(%d+)') and data.TheBasicsQ then
local UserId = {Text:match('(%d+)/statusTheBasicsz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(TheMero.."Mero:TheBasics:Group"..ChatId,UserId[2]) then
Redis:srem(TheMero.."Mero:TheBasics:Group"..ChatId,UserId[2])
else
Redis:sadd(TheMero.."Mero:TheBasics:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusOriginatorsz/(%d+)') and data.TheBasics then
local UserId = {Text:match('(%d+)/statusOriginatorsz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then 
if Redis:sismember(TheMero.."Mero:Originators:Group"..ChatId,UserId[2]) then
Redis:srem(TheMero.."Mero:Originators:Group"..ChatId,UserId[2])
else
Redis:sadd(TheMero.."Mero:Originators:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusManagersz/(%d+)') and data.Originators then
local UserId = {Text:match('(%d+)/statusManagersz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(TheMero.."Mero:Managers:Group"..ChatId,UserId[2]) then
Redis:srem(TheMero.."Mero:Managers:Group"..ChatId,UserId[2])
else
if not data.Originators and not Redis:get(TheMero.."Mero:Status:SetId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ تم تعطيل ( الرفع ) من قبل المنشئين",true)
end 
Redis:sadd(TheMero.."Mero:Managers:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusAddictivez/(%d+)') and data.Managers then
local UserId = {Text:match('(%d+)/statusAddictivez/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(TheMero.."Mero:Addictive:Group"..ChatId,UserId[2]) then
Redis:srem(TheMero.."Mero:Addictive:Group"..ChatId,UserId[2])
else
if not data.Originators and not Redis:get(TheMero.."Mero:Status:SetId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ تم تعطيل ( الرفع ) من قبل المنشئين",true)
end 
Redis:sadd(TheMero.."Mero:Addictive:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusDistinguishedz/(%d+)') and data.Addictive then
local UserId = {Text:match('(%d+)/statusDistinguishedz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(TheMero.."Mero:Distinguished:Group"..ChatId,UserId[2]) then
Redis:srem(TheMero.."Mero:Distinguished:Group"..ChatId,UserId[2])
else
if not data.Originators and not Redis:get(TheMero.."Mero:Status:SetId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ تم تعطيل ( الرفع ) من قبل المنشئين",true)
end 
Redis:sadd(TheMero.."Mero:Distinguished:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusmem/(%d+)') and data.TheBasicsQ then
local UserId ={ Text:match('(%d+)/statusmem/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:srem(TheMero.."Mero:Distinguished:Group"..ChatId,UserId[2])
Redis:srem(TheMero.."Mero:Addictive:Group"..ChatId,UserId[2])
Redis:srem(TheMero.."Mero:Managers:Group"..ChatId,UserId[2])
Redis:srem(TheMero.."Mero:Originators:Group"..ChatId,UserId[2])
Redis:srem(TheMero.."Mero:TheBasics:Group"..ChatId,UserId[2])
Redis:srem(TheMero.."Mero:SilentGroup:Group"..ChatId,UserId[2])
Redis:srem(TheMero.."Mero:BanGroup:Group"..ChatId,UserId[2])
bot.setChatMemberStatus(ChatId,UserId[2],'restricted',{1,1,1,1,1,1,1,1,1})
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end 
if Text and Text:match('(%d+)/statusban/(%d+)') and data.Addictive then
local UserId ={ Text:match('(%d+)/statusban/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if StatusCanOrNotCan(ChatId,UserId[2]) then
return bot.answerCallbackQuery(data.id,"\n⇜ هييه مايمديك تستخدم الامر على ( "..Controller(ChatId,UserId[2]).." ) ", true)
end
if Redis:sismember(TheMero.."Mero:BanGroup:Group"..ChatId,UserId[2]) then
Redis:srem(TheMero.."Mero:BanGroup:Group"..ChatId,UserId[2])
bot.setChatMemberStatus(ChatId,UserId[2],'restricted',{1,1,1,1,1,1,1,1,1})
else
if not data.Originators and not Redis:get(TheMero.."Mero:Status:BanId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ ( الحظر - الطرد - التقييد ) معطل من قبل المنشئين",true)
end 
Redis:sadd(TheMero.."Mero:BanGroup:Group"..ChatId,UserId[2])
bot.setChatMemberStatus(ChatId,UserId[2],'banned',0)
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusktm/(%d+)') and data.Addictive then
local UserId ={ Text:match('(%d+)/statusktm/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if StatusSilent(ChatId,UserId[2]) then
return bot.answerCallbackQuery(data.id, "\n⇜ هييه مايمديك تستخدم الامر على ( "..Controller(ChatId,UserId[2]).." ) ", true)
end
if Redis:sismember(TheMero.."Mero:SilentGroup:Group"..ChatId,UserId[2]) then
Redis:srem(TheMero.."Mero:SilentGroup:Group"..ChatId,UserId[2])
else
if not data.Originators and not Redis:get(TheMero.."Mero:Status:BanId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ ( الحظر - الطرد - التقييد ) معطل من قبل المنشئين",true)
end 
Redis:sadd(TheMero.."Mero:SilentGroup:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('/keyhzr') then
local list = Redis:smembers(TheMero..'List_hzr'..ChatId) 
nameko = list[#list]
playerhzr = Redis:get(TheMero..'playerhzr'..ChatId)
klmahzr = Redis:get(TheMero..'klmahzr'..ChatId)
if tonumber(playerhzr) == tonumber(IdUser) then
bot.answerCallbackQuery(data.id, "مايمديك تشوف الاجابة احزرها بنفسك", true)
else
bot.answerCallbackQuery(data.id, klmahzr, true)
end
end
if Text and Text:match('/delAmr1') then
local UserId = Text:match('/delAmr1')
if data.Addictive then
return bot.deleteMessages(ChatId,{[1]= Msg_id})
end
end
if Text and Text:match('(%d+)/cancelamr') and data.Addictive then
local UserId = Text:match('(%d+)/cancelamr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Command:Reids:Group:Del"..ChatId..":"..IdUser)
Redis:del(TheMero.."Mero:Command:Reids:Group"..ChatId..":"..IdUser)
Redis:del(TheMero.."Mero:Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Mero:Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Mero:Set:Rd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Mero:Set:On"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:array:Ssd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:array:rd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:array"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Rd"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:On"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Manager:rd:inline"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:On:mz"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Rd:mz"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Onmzch"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Rdmzch"..IdUser..":"..ChatId)
Redis:del(TheMero.."Set:Manager:rd:inline3am"..IdUser..":"..ChatId)
return edit(ChatId,Msg_id,"⇜ تم الغاء الامر ", 'md')
end
end
if Text == 'EndAddarrayy'..IdUser then  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'Louis',url="t.me/Y88F8"}},
}
}
if Redis:get(TheMero..'Set:arrayy'..IdUser..':'..ChatId) == 'true1' then
Redis:del(TheMero..'Set:arrayy'..IdUser..':'..ChatId)
edit(ChatId,Msg_id,"⇜ تم حفظ الردود ", 'md', true, false, reply_markup)
else
edit(ChatId,Msg_id,"⇜ تم تنفيذ الامر سابقاًً", 'md', true, false, reply_markup)
end
end
if Text == 'EndAddarray'..IdUser then  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'Louis',url="t.me/Y88F8"}},
}
}
if Redis:get(TheMero..'Set:array'..IdUser..':'..ChatId) == 'true1' then
Redis:del(TheMero..'Set:array'..IdUser..':'..ChatId)
edit(ChatId,Msg_id,"⇜ تم حفظ الردود ", 'md', true, false, reply_markup)
else
edit(ChatId,Msg_id,"⇜ تم تنفيذ الامر سابقاًً", 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/mute_thshesh') and data.Originators then
local UserId = Text:match('(%d+)/mute_thshesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."trfeh"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل امر التسليه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kicknum') and data.TheBasics then
local UserId = Text:match('(%d+)/mute_kicknum')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."spammkick"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الحظر المحدود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_seck') and data.Originators then
local UserId = Text:match('(%d+)/mute_seck')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."kadmeat"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل امر الصيغ").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_knile') and data.Managers then
local UserId = Text:match('(%d+)/mute_knile')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."knele"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل غنيلي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_brj') and data.Managers then
local UserId = Text:match('(%d+)/mute_brj')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."brjj"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الابراج").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_audio') and data.Managers then
local UserId = Text:match('(%d+)/mute_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero..'lock_geamsAudio1'..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الصوتيات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_audioall') and data.Managers then
local UserId = Text:match('(%d+)/mute_audioall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero..'lock_geamsAudio'..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الصوتيات عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_takall') and data.Originators then
local UserId = Text:match('(%d+)/mute_takall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero..'tagall@all'..ChatId,'open')
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل التاك عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_namemy') and data.Managers then
local UserId = Text:match('(%d+)/mute_namemy')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero..'lock_chengname'..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل التنبيه").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/unmute_thshesh') and data.Originators then
local UserId = Text:match('(%d+)/unmute_thshesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."trfeh"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل التسليه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kicknum') and data.Originators then
local UserId = Text:match('(%d+)/unmute_kicknum')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."spammkick"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الحظر المحدود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_seck') and data.Originators then
local UserId = Text:match('(%d+)/unmute_seck')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."kadmeat"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل امر الصيغ").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_knile') and data.Managers then
local UserId = Text:match('(%d+)/unmute_knile')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."knele"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل غنيلي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_brj') and data.Managers then
local UserId = Text:match('(%d+)/unmute_brj')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."brjj"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الابراج").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_audio') and data.Managers then
local UserId = Text:match('(%d+)/unmute_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero..'lock_geamsAudio1'..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الصوتيات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_audioall') and data.Originators then
local UserId = Text:match('(%d+)/unmute_audioall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero..'lock_geamsAudio'..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الصوتيات عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_takall') and data.Originators then
local UserId = Text:match('(%d+)/unmute_takall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero..'tagall@all'..ChatId,'close')
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل التاك عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_namemy') and data.Managers then
local UserId = Text:match('(%d+)/unmute_namemy')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero..'lock_chengname'..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل التنبيه").unLock, 'md', true, false, reply_markup)
end
end
if Text == 'صح' then
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ كفو اجابتك صح\n⇜ تم اضافة لك 3 نقاط\n✧'
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..IdUser,3)  
return edit(ChatId,Msg_id,Teext, 'md')
elseif Text == 'خطأ' then
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ للاسف اجابتك خطأ !!'
return edit(ChatId,Msg_id,Teext, 'md')
end
if Text == 'صح1' then
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ كفو اجابتك صح\n⇜ تم اضافة لك 3 نقاط\n✧'
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..IdUser,3)  
return edit(ChatId,Msg_id,Teext, 'md')
elseif Text == 'خطأ1' then
local UserInfo = bot.getUser(IdUser)
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ للاسف اجابتك خطأ !!'
return edit(ChatId,Msg_id,Teext, 'md')
end
if Text and Text:match('(%d+)/meza_photo') then
local UserId = Text:match('(%d+)/meza_photo')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(TheMero.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(TheMero.."meza:type"..meza_name, "photo")
Redis:sadd(TheMero.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_video') then
local UserId = Text:match('(%d+)/meza_video')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(TheMero.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(TheMero.."meza:type"..meza_name, "video")
Redis:sadd(TheMero.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_audio') then
local UserId = Text:match('(%d+)/meza_audio')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(TheMero.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(TheMero.."meza:type"..meza_name, "audio")
Redis:sadd(TheMero.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_animation') then
local UserId = Text:match('(%d+)/meza_animation')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(TheMero.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(TheMero.."meza:type"..meza_name, "animation")
Redis:sadd(TheMero.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_sticker') then
local UserId = Text:match('(%d+)/meza_sticker')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(TheMero.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(TheMero.."meza:type"..meza_name, "sticker")
Redis:sadd(TheMero.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text == '/joineloceagin' then
local list = Redis:smembers(TheMero..'loce:list'..ChatId) 
name1 = list[math.random(#list)]
local UserInfo1 = bot.getUser(name1)
local Teext1 = '- ['..UserInfo1.first_name..'](tg://user?id='..name1..')'
xxffxx1 = '⇜ لقد فاز بالمركز الثاني : '..Teext1..'\n⇜ ربح 3 نقاط'
Redis:set(TheMero..'loce:listset1'..ChatId,xxffxx1)
Redis:srem(TheMero..'loce:list'..ChatId,name1)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..name1,3)  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط مرة اخرى', data = '/joineloceagin1'},
},
}
}
return edit(ChatId,Msg_id,xxffxx1, 'md', true, false, reply_markup)
end
if Text == '/joineloceagin1' then
local list = Redis:smembers(TheMero..'loce:list'..ChatId) 
name1 = list[math.random(#list)]
local UserInfo1 = bot.getUser(name1)
local Teext1 = '- ['..UserInfo1.first_name..'](tg://user?id='..name1..')'
xxffxx1 = '⇜ لقد خسر : '..Teext1..' '
local get1 = Redis:get(TheMero..'loce:listset'..ChatId)
local get2 = Redis:get(TheMero..'loce:listset1'..ChatId)

Redis:del(TheMero..'loce:list'..ChatId) 
Redis:del(TheMero..'loce:listset'..ChatId)
Redis:del(TheMero..'loce:listset1'..ChatId)
return edit(ChatId,Msg_id,get1..'\n'..get2..'\n'..xxffxx1..'\n', 'md', true)
end
if Text == '/joineloce' then
if not Redis:sismember(TheMero..'loce:list'..ChatId,IdUser) then 
Redis:sadd(TheMero..'loce:list'..ChatId,IdUser)
local list = Redis:smembers(TheMero..'loce:list'..ChatId) 
if #list == 3 then
name1 = list[math.random(#list)]
local UserInfo1 = bot.getUser(name1)
local Teext1 = '- ['..UserInfo1.first_name..'](tg://user?id='..name1..')'
xxffxx1 = '⇜ لقد فاز بالمركز الاول : '..Teext1..' ربح 5 نقاط'
Redis:set(TheMero..'loce:listset'..ChatId,xxffxx1)
Redis:srem(TheMero..'loce:list'..ChatId,name1)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..name1,5)  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط مرة اخرى', data = '/joineloceagin'},
},
}
}
return edit(ChatId,Msg_id,xxffxx1, 'md', true, false, reply_markup)
else
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
local xxffxx = 'عدد الاعبين : '..#list..' \nلقد انضم للعبة الحظ : \n'..Teext
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/joineloce'},
},
}
}
return edit(ChatId,Msg_id,xxffxx, 'md', true, false, reply_markup)
end
else
bot.answerCallbackQuery(data.id, "⇜ لقد انضممت مسبقاً", true)
end
end
if Text == '/startjoinerolet' then
local list = Redis:smembers(TheMero..'rolet:list'..ChatId)
name = list[math.random(#list)]
local UserInfo = bot.getUser(name)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..name..')'
Redis:srem(TheMero..'rolet:list'..ChatId,name)
if #list == 1 then
Redis:srem(TheMero..'rolet:list'..ChatId,name)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..IdUser,10)  
https.request("https://api.telegram.org/bot"..Token..'/sendMessage?ChatId='..ChatId..'&text='..URL.escape('⇜ الف مبروك لقد فاز : ['..UserInfo.first_name..'](tg://user?id='..name..') وربح 10 نقاط ')..'&reply_to_message_id='..Msg_id..'&parse_mode=markdown') 
return edit(ChatId,Msg_id,'⇜ الف مبروك لقد فاز : ['..UserInfo.first_name..'](tg://user?id='..name..') وربح 10 نقاط ', 'md')
end
local xxffxx = '⇜ لقد خسر : '..Teext
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'بدء الروليت ', data = '/startjoinerolet'},
},
}
}
return edit(ChatId,Msg_id,xxffxx, 'md', true, false, reply_markup)
end
if Text == '/joinerolet' then
if not Redis:sismember(TheMero..'rolet:list'..ChatId,IdUser) then 
Redis:sadd(TheMero..'rolet:list'..ChatId,IdUser)
local list = Redis:smembers(TheMero..'rolet:list'..ChatId) 
if #list == 3 then
local message = '⇜ المشتركين في اللعبة : ' 
for k,v in pairs(list) do
local UserInfo = bot.getUser(IdUser)
if k == 1 then
id = 'tg://user?id='..v
name1 = UserInfo.first_name
end
if k == 2 then
id1 = 'tg://user?id='..v
name2 = UserInfo.first_name
end
if k == 3 then
id2 = 'tg://user?id='..v
name3 = UserInfo.first_name
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = name1, url = id}, 
},
{
{text = name2, url = id1}, 
},
{
{text = name3, url = id2}, 
},
{
{text = 'اضغط لبدء اللعبة', data = '/startjoinerolet'},
},
}
}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
else
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
local xxffxx = 'عدد الاعبين : '..#list..' \nلقد انضم للروليت : \n'..Teext
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/joinerolet'},
},
}
}
return edit(ChatId,Msg_id,xxffxx, 'md', true, false, reply_markup)
end
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id_..'&text='..URL.escape('لقد انضممت مسبقاً')..'&show_alert=true')
end
end
if Text and Text:match('(%d+)/iktm/(%d+)') then
local GetUserReply = {Text:match('(%d+)/iktm/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
Redis:sadd(TheMero.."Mero:SilentGroup:Group"..ChatId,GetUserReply[1]) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n⇜ تم كتمه بسبب الانذارات ", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/iban/(%d+)') then
local GetUserReply = {Text:match('(%d+)/iban/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
Redis:sadd(TheMero.."Mero:BanGroup:Group"..ChatId,GetUserReply[1]) 
bot.setChatMemberStatus(ChatId,GetUserReply[1],'banned',0)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n⇜ تم حظره بسبب الانذارات ", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/ikick/(%d+)') then
local GetUserReply = {Text:match('(%d+)/ikick/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
bot.setChatMemberStatus(ChatId,GetUserReply[1],'banned',0)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n⇜ تم طرده بسبب الانذارات ", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/ikide/(%d+)') then
local GetUserReply = {Text:match('(%d+)/ikide/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
bot.setChatMemberStatus(ChatId,GetUserReply[1],'restricted',{1,0,0,0,0,0,0,0,0})
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n⇜ تم تقييده بسبب الانذارات ", 'md', true, false, reply_markup)
end

if Text and Text:match('(%d+)/backinthar/(%d+)') then
local GetUserReply = {Text:match('(%d+)/backinthar/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'كتم', data = GetUserReply[1]..'/iktm/'..GetUserReply[2]},{text = 'حظر', data = GetUserReply[1]..'/iban/'..GetUserReply[2]},
},
{
{text = 'تقييد', data = GetUserReply[1]..'/ikide/'..GetUserReply[2]}, {text = 'طرد', data = GetUserReply[1]..'/ikick/'..GetUserReply[2]}, 
},
{
{text = 'تنزيل الرتب', data = GetUserReply[1]..'/iTnzelall/'..GetUserReply[2]},{text = 'رفع القيود', data = GetUserReply[1]..'/rafaall/'..GetUserReply[2]}, 
},
}
}
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
return edit(ChatId,Msg_id,Teext.."\n⇜ الان تحكم بما يلي", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/iTnzelall/(%d+)') then
local GetUserReply = {Text:match('(%d+)/iTnzelall/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end  
Redis:srem(TheMero.."Mero:Distinguished:Group"..ChatId,GetUserReply[1]) 
return bot.answerCallbackQuery(data.id, "⇜ تم تنزيله من الرتب يمكنك الان ان تتحكم به ", true)
end
if Text and Text:match('(%d+)/rafaall/(%d+)') then
local GetUserReply = {Text:match('(%d+)/rafaall/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end  
bot.setChatMemberStatus(ChatId,GetUserReply[1],'restricted',{1,1,1,1,1,1,1,1,1})
Redis:srem(TheMero.."Mero:BanGroup:Group"..ChatId,GetUserReply[1]) 
Redis:srem(TheMero.."Mero:SilentGroup:Group"..ChatId,GetUserReply[1]) 
return bot.answerCallbackQuery(data.id, "⇜ تم رفع القيود عنه", true)
end

if Text and Text:match('(%d+)/okiktm') then
local GetUserReply = Text:match('(%d+)/okiktm')
if tonumber(GetUserReply) == tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ لاتستطيع التصويت لنفسك", true)
end 
local UserInfo = bot.getUser(GetUserReply)
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply..')'
if Redis:sismember(TheMero.."Mero:Num:okiktm"..ChatId, IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ قمت بالتصويت مسبقاً", true)
end
Redis:sadd(TheMero.."Mero:Num:okiktm"..ChatId, IdUser)  
local list = Redis:smembers(TheMero.."Mero:Num:okiktm"..ChatId)
if #list >= tonumber(3) then
Redis:del(TheMero.."Mero:Num:okiktm"..ChatId)
if tonumber(GetUserReply) == 779108237 then
testser = true
elseif tonumber(GetUserReply) == 2089102006 then
testser = true
elseif The_ControllerAll(GetUserReply) == true then  
testser = true
else
testser = false
end
if testser == false then
Redis:sadd(TheMero.."Mero:SilentGroup:Group"..ChatId,GetUserReply) 
end
return edit(ChatId,Msg_id,Teext.."\n⇜ تم وصول عدد الموافقين 3 وتم كتمك", 'md', true)
end
return bot.answerCallbackQuery(data.id, "⇜ تم تسجيل صوتك", true)
end
if Text and Text:match('(%d+)/noiktm') then
local GetUserReply = Text:match('(%d+)/noiktm')
if tonumber(GetUserReply) == tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ لاتستطيع التصويت لنفسك", true)
end 
local UserInfo = bot.getUser(GetUserReply)
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply..')'
if Redis:sismember(TheMero.."Mero:Num:noiktm"..ChatId, IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ قمت بالتصويت مسبقاً", true)
end
Redis:sadd(TheMero.."Mero:Num:noiktm"..ChatId, IdUser)  
local list = Redis:smembers(TheMero.."Mero:Num:noiktm"..ChatId)
if #list >= tonumber(3) then
Redis:del(TheMero.."Mero:Num:noiktm"..ChatId)
Redis:srem(TheMero.."Mero:SilentGroup:Group"..ChatId,GetUserReply) 
return edit(ChatId,Msg_id,Teext.."\n⇜ تم تركك في حال سبيلك صوتوا 3 غير موافقين تنكتم ", 'md', true)
end
return bot.answerCallbackQuery(data.id, "⇜ تم تسجيل صوتك", true)
end

if Text and Text:match('(%d+)/kanele') then
local UserId = Text:match('(%d+)/kanele')
if tonumber(IdUser) == tonumber(UserId) then
Abs = math.random(2,140);
local Text ='🎙'
keyboard = {}
keyboard.inline_keyboard = {
{
{text = '• اغنية اخرى •', callback_data =IdUser..'/kanele'}, 
},
}
https.request("https://api.telegram.org/bot"..Token..'/sendvoice?chat_id=' .. ChatId .. '&voice=https://t.me/fkfnfnfn/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
bot.deleteMessages(ChatId,{[1]= Msg_id})
end
end
if Text == "/kill_the_ant" then
local from_name = bot.getUser(IdUser).first_name
local tag = "["..from_name.."](tg://user?id="..IdUser..")"
local media ={
type = "photo",
media = "https://te.legra.ph/file/adb1c649693a9abb5cc8f.jpg",
caption = 'هو القتلها '..tag..' ',
parse_mode = "Markdown"
}
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'Louis', url="t.me/Y88F8"}
},
}
local msg_rep = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..msg_rep.."&media="..JSON.encode(media).."&reply_markup="..JSON.encode(keyboard))
end
if Text and Text:match('(.*)/yes_z/(.*)') then
  local anubis = {Text:match('(.*)/yes_z/(.*)')}
  local zwga_id = anubis[1]
  local zwg_id = anubis[2]
  if tonumber(zwga_id) == tonumber(IdUser) then
    local zwga_name = bot.getUser(zwga_id).first_name
    local zwg_name = bot.getUser(zwg_id).first_name
    Redis:set(TheMero..ChatId..zwga_id.."mtzwga:", zwg_id)
    Redis:set(TheMero..ChatId..zwg_id.."mtzwga:", zwga_id)
    return edit(ChatId, Msg_id, "⇜ مبرووووك ياحلوة ["..zwga_name.."](tg://user?id="..zwga_id..")\n⇜ مبروك ياحلو  ["..zwg_name.."](tg://user?id="..zwg_id..")","md",false)
  end
end
if Text and Text:match('(.*)/no_z/(.*)') then
  local anubis = {Text:match('(.*)/no_z/(.*)')}
  local zwga_id = anubis[1]
  local zwg_id = anubis[2]
  if tonumber(zwga_id) == tonumber(IdUser) then
    return edit(ChatId, Msg_id, "⇜ هييه ماودك تتزوجي !","md",false)
  end
end
if Text and Text:match('(%d+)/zeng') then
  local UserId = Text:match('(%d+)/zeng')
  if tonumber(UserId) == tonumber(IdUser) then
    Redis:set(TheMero..ChatId..IdUser.."zkrf:", "zeng")
    edit(ChatId, Msg_id, "𖦹 ارسل لي الكلمة لزخرفتها", "md",false)
  end
  end
  if Text and Text:match('(.*)/yes_zw/(.*)') then
  local anubis = {Text:match('(.*)/yes_zw/(.*)')}
  local zwga_id = anubis[1]
  local zwg_id = anubis[2]
  if tonumber(zwga_id) == tonumber(IdUser) then
    local zwga_name = bot.getUser(zwga_id).first_name
    local zwg_name = bot.getUser(zwg_id).first_name
    Redis:set(TheMero..ChatId..zwga_id.."mtzwga:", zwg_id)
    Redis:set(TheMero..ChatId..zwg_id.."mtzwga:", zwga_id)
    return edit(ChatId, Msg_id, "⇜ مبروووك يالعريس 「["..zwga_name.."](tg://user?id="..zwga_id..")」\n⇜ تم زواجك من 「["..zwg_name.."](tg://user?id="..zwg_id..")」","md",false)
  end
end
if Text and Text:match('(.*)/no_zw/(.*)') then
  local anubis = {Text:match('(.*)/no_zw/(.*)')}
  local zwga_id = anubis[1]
  local zwg_id = anubis[2]
  if tonumber(zwga_id) == tonumber(IdUser) then
    return edit(ChatId, Msg_id, "⇜ ادري منت قد المسؤلية توكل بس ","md",false)
  end
end

if Text == ('/Hgr') then
local KlamSpeed = {"🪨","📃","✂"}
local name = KlamSpeed[math.random(#KlamSpeed)]
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if name == "🪨" then
return edit(ChatId,Msg_id,"\n⇜ انت : 🪨 \n⇜ انا : "..name.."\n⇜ النتيجة : تعادل", 'md')
end
if name == "✂" then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..IdUser, 1)  
return edit(ChatId,Msg_id,"\n⇜ انت : 🪨 \n⇜ انا : "..name.."\n⇜ النتيجة : فزت انت "..Teext, 'md')
end
if name == "📃" then
return edit(ChatId,Msg_id,"\n⇜ انت : 🪨 \n⇜ انا : "..name.."\n⇜ النتيجة : انا ربحت ", 'md')
end
end
if Text == ('/Warka') then
local KlamSpeed = {"🪨","??","✂"}
local name = KlamSpeed[math.random(#KlamSpeed)]
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if name == "📃" then
return edit(ChatId,Msg_id,"\n⇜ انت : 📃 \n⇜ انا : "..name.."\n⇜ النتيجة : تعادل", 'md')
end
if name == "🪨" then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..IdUser, 1)  
return edit(ChatId,Msg_id,"\n⇜ انت : 📃 \n⇜ انا : "..name.."\n⇜ النتيجة : فزت انت "..Teext, 'md')
end
if name == "✂" then
return edit(ChatId,Msg_id,"\n⇜ انت : 📃 \n⇜ انا : "..name.."\n⇜ النتيجة : انا ربحت ", 'md')
end
end
if Text == ('/Mukas') then
local KlamSpeed = {"🪨","📃","✂"}
local name = KlamSpeed[math.random(#KlamSpeed)]
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if name == "✂" then
return edit(ChatId,Msg_id,"\n⇜ انت : ✂ \n⇜ انا : "..name.."\n⇜ النتيجة : تعادل", 'md')
end
if name == "??" then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..IdUser, 1)  
return edit(ChatId,Msg_id,"\n⇜ انت : ✂ \n⇜ انا : "..name.."\n⇜ النتيجة : فزت انت "..Teext, 'md')
end
if name == "🪨" then
return edit(ChatId,Msg_id,"\n⇜ انت : ✂ \n⇜ انا : "..name.."\n⇜ النتيجة : انا ربحت ", 'md')
end
end
----------
if Text and Text:match('(.*)/zwag_yes/(.*)/mahr/(.*)') then
local Data = {Text:match('(.*)/zwag_yes/(.*)/mahr/(.*)')}
if tonumber(Data[1]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "شو رأيك نزوجك بدالهم ؟", true)
end
if tonumber(IdUser) == tonumber(Data[1]) then
if Redis:get(TheMero.."zwag_request:"..Data[1]) then
local zwga_id = tonumber(Data[1])
local zwg_id = tonumber(Data[2])
local coniss = Data[3]
local zwg = bot.getUser(zwg_id)
local zwga = bot.getUser(zwga_id)
local zwg_tag = '['..zwg.first_name.."](tg://user?id="..zwg_id..")"
local zwga_tag = '['..zwga.first_name.."](tg://user?id="..zwga_id..")"
local hadddd = tonumber(coniss)
ballanceekk = tonumber(coniss) / 100 * 15
ballanceekkk = tonumber(coniss) - ballanceekk
local convert_mony = string.format("%.0f",ballanceekkk)
ballancee = Redis:get(TheMero.."boob"..zwg_id) or 0
ballanceea = Redis:get(TheMero.."boob"..zwga_id) or 0
zogtea = ballanceea + ballanceekkk
zeugh = ballancee - tonumber(coniss)
Redis:set(TheMero.."boob"..zwg_id , math.floor(zeugh))
Redis:sadd(TheMero.."roogg1",zwg_id)
Redis:sadd(TheMero.."roogga1",zwga_id)
Redis:set(TheMero.."roog1"..zwg_id,zwg_id)
Redis:set(TheMero.."rooga1"..zwg_id,zwga_id)
Redis:set(TheMero.."roogte1"..zwga_id,zwga_id)
Redis:set(TheMero.."rahr1"..zwg_id,tonumber(coniss))
Redis:set(TheMero.."rahr1"..zwga_id,tonumber(coniss))
Redis:set(TheMero.."roog1"..zwga_id,zwg_id)
Redis:set(TheMero.."rahrr1"..zwg_id,math.floor(ballanceekkk))
Redis:set(TheMero.."rooga1"..zwga_id,zwga_id)
Redis:set(TheMero.."rahrr1"..zwga_id,math.floor(ballanceekkk))
return edit(ChatId,Msg_id,"كولولولولويششش\nاليوم عقدنا قران :\n\nالزوج "..zwg_tag.." 🤵🏻\n   💗\nالزوجة "..zwga_tag.." 👰🏻‍♀️\nالمهر : "..convert_mony.." درهم بعد الضريبة 15%\nعشان تشوفون وثيقة زواجكم اكتبوا : زواجي", 'md', false)
else
return edit(ChatId,Msg_id,"انتهى الطلب وين كنتي لما طلب ايدك", 'md', false)
end
end
end
if Text and Text:match('(%d+)/zwag_no/(%d+)') then
local UserId = {Text:match('(%d+)/zwag_no/(%d+)')}
if tonumber(UserId[1]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "شو رأيك نزوجك بدالهم ؟", true)
else
Redis:del(TheMero.."zwag_request:"..UserId[1])
Redis:del(TheMero.."zwag_request:"..UserId[2])
return edit(ChatId,Msg_id,"خليكي عانس ؟؟", 'md', false)
end
end
----
if Text and Text:match('(%d+)/toptop') then
local UserId = Text:match('(%d+)/toptop')
if tonumber(data.sender_user_id) == tonumber(UserId) then
if Redis:ttl(TheMero.."deletbank" .. 111) >= 1036800 then
day = "13 يوم"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 950400 then
day = "12 يوم"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 864000 then
day = "11 يوم"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 777600 then
day = "10 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 691200 then
day = "9 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 604800 then
day = "8 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 518400 then
day = "7 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 432000 then
day = "6 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 345600 then
day = "5 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 259200 then
day = "4 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 172800 then
day = "3 ايام"
elseif Redis:ttl(TheMero.."deletbank" .. 111) >= 86400 then
day = "يومان"
elseif Redis:ttl(TheMero.."deletbank" .. 111) <= 86400 then
day = "يوم واحد"
else
day = " لم يحدد الوقت "
end
local toptop = "⇜ أهلين يا روح لويس هذي أوامري :\n⇜ اختر نوع التوب من الازرار\n\n⇜ تتصفر اللعبة بعد ↤ "..day.."\n✧"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'توب الفلوس', data = data.sender_user_id..'/topmon'},{text = 'توب الحراميه', data = data.sender_user_id..'/topzrf'},
},
{
{text = 'توب المتزوجين', data = data.sender_user_id..'/zoztee'}, {text = 'توب المتبرعين', data = data.sender_user_id..'/motbra'},
},
{
{text = 'توب النوادي', data = data.sender_user_id..'/topnade'},{text = 'توب المزارع', data = data.sender_user_id..'/mazratee'},
},
{
{text = 'اخفاء', data = data.sender_user_id..'/delAmr'}, 
},
{
{text = 'Louis', url="t.me/Y88F8"},
},
}
}
edit(ChatId,Msg_id,toptop, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/topnade') then
local UserId = Text:match('(%d+)/topnade')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local bank_users = Redis:smembers(TheMero.."ownernade")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد نوادي","md",true)
end
top_monyd = "⇜ توب اعلى 10 نوادي :\n\n"
mony_listd = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(TheMero.."nokatnade"..v) or 0
table.insert(mony_listd, {tonumber(mony) , v})
end
table.sort(mony_listd, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)"
}
for k,v in pairs(mony_listd) do
if num <= 10 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local kk = Redis:get(TheMero.."lkbnade"..v[2])
kk = kk:gsub("🇾🇪️",'')
kk = kk:gsub("🇹🇳",'')
kk = kk:gsub("🇸🇾",'')
kk = kk:gsub("🇸🇩",'')
kk = kk:gsub("🇸🇦",'')
kk = kk:gsub("🇶🇦",'')
kk = kk:gsub("🇵🇸",'')
kk = kk:gsub("🇴🇲",'')
kk = kk:gsub("🇲🇦",'')
kk = kk:gsub("🇱🇾",'')
kk = kk:gsub("🇱🇧",'')
kk = kk:gsub("🇰🇼️",'')
kk = kk:gsub("🇯🇴",'')
kk = kk:gsub("🇮🇶",'')
kk = kk:gsub("🇪🇬",'')
kk = kk:gsub("🇧🇭",'')
kk = kk:gsub("🇩🇿️",'')
kk = kk:gsub("🇦🇪",'')
kk = kk:gsub("@[%a%d_]+",'')
kk = kk:gsub("#[%a%d_]+",'')
local mony = v[1]
local doltebank = Redis:get(TheMero.."doltebank"..v[2]) or " "
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_monyd = top_monyd..emo.." "..gflos.."  l "..kk.." ( "..tt.." "..doltebank.." ) \n"
gg = " ━━━━━━━━━\n\n⇜ ملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,top_monyd..gg, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/mazratee') then
local UserId = Text:match('(%d+)/mazratee')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local bank_users = Redis:smembers(TheMero.."ownerfram")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد مزارع","md",true)
end
top_monyd = "توب اعلى 10 مزارع :\n\n"
mony_listd = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(TheMero.."toplvfarm"..v) or 0
table.insert(mony_listd, {tonumber(mony) , v})
end
table.sort(mony_listd, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)"
}
for k,v in pairs(mony_listd) do
if num <= 10 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local kk = Redis:get(TheMero.."namefram"..v[2])
kk = kk:gsub("🇾🇪️",'')
kk = kk:gsub("🇹🇳",'')
kk = kk:gsub("🇸🇾",'')
kk = kk:gsub("🇸🇩",'')
kk = kk:gsub("🇸🇦",'')
kk = kk:gsub("🇶🇦",'')
kk = kk:gsub("🇵🇸",'')
kk = kk:gsub("🇴🇲",'')
kk = kk:gsub("🇲🇦",'')
kk = kk:gsub("🇱🇾",'')
kk = kk:gsub("🇱🇧",'')
kk = kk:gsub("🇰🇼️",'')
kk = kk:gsub("🇯🇴",'')
kk = kk:gsub("🇮🇶",'')
kk = kk:gsub("🇪🇬",'')
kk = kk:gsub("🇧🇭",'')
kk = kk:gsub("🇩🇿️",'')
kk = kk:gsub("🇦🇪",'')
kk = kk:gsub("@[%a%d_]+",'')
kk = kk:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(TheMero.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_monyd = top_monyd..emo.." "..gflos.."  l "..kk.." ( "..tt.." "..doltebank.." ) \n"
gg = " ━━━━━━━━━\n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,top_monyd..gg, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/motbra') then
local UserId = Text:match('(%d+)/motbra')
if tonumber(data.sender_user_id) == tonumber(UserId) then
  local F_Name = bot.getUser(data.sender_user_id).first_name
Redis:set(TheMero..data.sender_user_id.."first_name:", F_Name)
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
news = news:gsub("🇾🇪️",'')
news = news:gsub("🇹🇳",'')
news = news:gsub("🇸🇾",'')
news = news:gsub("🇸🇩",'')
news = news:gsub("🇸🇦",'')
news = news:gsub("🇶🇦",'')
news = news:gsub("🇵🇸",'')
news = news:gsub("🇴🇲",'')
news = news:gsub("🇲🇦",'')
news = news:gsub("🇱🇾",'')
news = news:gsub("🇱🇧",'')
news = news:gsub("🇰🇼️",'')
news = news:gsub("🇯🇴",'')
news = news:gsub("🇮🇶",'')
news = news:gsub("🇪🇬",'')
news = news:gsub("🇧🇭",'')
news = news:gsub("🇩🇿️",'')
news = news:gsub("🇦🇪",'')
else
news = " لا يوجد"
end
ballancee = Redis:get(TheMero.."tabbroat"..data.sender_user_id) or 0
local bank_users = Redis:smembers(TheMero.."taza")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد حسابات في البنك","md",true)
end
top_mony = "توب اعلى 20 شخص بالتبرعات :\n\n"
tabr_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(TheMero.."tabbroat"..v)
table.insert(tabr_list, {tonumber(mony) , v})
end
table.sort(tabr_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(tabr_list) do
if num <= 20 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(TheMero.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_mony = top_mony..emo.." "..gflos.." 💵 l "..tt.." "..doltebank.." \n"
gflous = string.format("%.0f", ballancee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\n• you) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,top_mony..gg, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/zoztee') then
local UserId = Text:match('(%d+)/zoztee')
if tonumber(data.sender_user_id) == tonumber(UserId) then
  local zwag_users = Redis:smembers(TheMero.."roogg1")
  if #zwag_users == 0 then
  return edit(ChatId,Msg_id,"⇜ مافي زواجات حاليا","md",true)
  end
  top_zwag = "توب 30 اغلى زواجات :\n\n"
  zwag_list = {}
  for k,v in pairs(zwag_users) do
  local mahr = Redis:get(TheMero.."rahr1"..v)
  local zwga = Redis:get(TheMero.."rooga1"..v)
  table.insert(zwag_list, {tonumber(mahr) , v , zwga})
  end
  table.sort(zwag_list, function(a, b) return a[1] > b[1] end)
  znum = 1
  zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)",
"21)",
"22)",
"23)",
"24)",
"25)",
"26)",
"27)",
"28)",
"29)",
"30)"
  }
  for k,v in pairs(zwag_list) do
  if znum <= 30 then
  local zwg_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
  local zwga_name = bot.getUser(v[3]).first_name or Redis:get(TheMero..v[3].."first_name:") or "لا يوجد اسم"
tt =  "["..zwg_name.."]("..zwg_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
kk = "["..zwga_name.."]("..zwga_name..")"
kk = kk:gsub("🇾🇪️",'')
kk = kk:gsub("🇹🇳",'')
kk = kk:gsub("🇸🇾",'')
kk = kk:gsub("🇸🇩",'')
kk = kk:gsub("🇸🇦",'')
kk = kk:gsub("🇶🇦",'')
kk = kk:gsub("🇵🇸",'')
kk = kk:gsub("🇴🇲",'')
kk = kk:gsub("🇲🇦",'')
kk = kk:gsub("🇱🇾",'')
kk = kk:gsub("🇱🇧",'')
kk = kk:gsub("🇰🇼️",'')
kk = kk:gsub("🇯🇴",'')
kk = kk:gsub("🇮🇶",'')
kk = kk:gsub("🇪🇬",'')
kk = kk:gsub("🇧🇭",'')
kk = kk:gsub("🇩🇿️",'')
kk = kk:gsub("🇦🇪",'')
kk = kk:gsub("@[%a%d_]+",'')
kk = kk:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(TheMero.."doltebank"..v[2]) or " "
local doltebankz = Redis:get(TheMero.."doltebank"..v[3]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = zwag_emoji[k]
znum = znum + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_zwag = top_zwag..emo.." "..gflos.." 💵 l "..tt.." "..doltebank.." 👫 "..kk.." "..doltebankz.."\n"
gg = "\n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
  end
  end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,top_zwag..gg, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/topzrf') then
local UserId = Text:match('(%d+)/topzrf')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
news = news:gsub("🇾🇪️",'')
news = news:gsub("🇹🇳",'')
news = news:gsub("🇸🇾",'')
news = news:gsub("🇸🇩",'')
news = news:gsub("🇸🇦",'')
news = news:gsub("🇶🇦",'')
news = news:gsub("🇵🇸",'')
news = news:gsub("🇴🇲",'')
news = news:gsub("🇲🇦",'')
news = news:gsub("🇱🇾",'')
news = news:gsub("🇱🇧",'')
news = news:gsub("🇰🇼️",'')
news = news:gsub("🇯🇴",'')
news = news:gsub("🇮🇶",'')
news = news:gsub("🇪🇬",'')
news = news:gsub("🇧🇭",'')
news = news:gsub("🇩🇿️",'')
news = news:gsub("🇦🇪",'')
else
news = " لا يوجد"
end
zrfee = Redis:get(TheMero.."rrfff"..data.sender_user_id) or 0
local ty_users = Redis:smembers(TheMero.."rrfffid")
if #ty_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد احد","md",true)
end
ty_anubis = "توب 20 شخص زرفوا فلوس :\n\n"
ty_list = {}
for k,v in pairs(ty_users) do
local mony = Redis:get(TheMero.."rrfff"..v)
table.insert(ty_list, {tonumber(mony) , v})
end
table.sort(ty_list, function(a, b) return a[1] > b[1] end)
num_ty = 1
emojii ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(ty_list) do
if num_ty <= 20 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(TheMero.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emoo = emojii[k]
num_ty = num_ty + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
ty_anubis = ty_anubis..emoo.." "..gflos.." 💵 l "..tt.." "..doltebank.."\n"
gflous = string.format("%.0f", zrfee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = "\n━━━━━━━━━\n• you) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,ty_anubis..gg, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/topmon') then
local UserId = Text:match('(%d+)/topmon')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local F_Name = bot.getUser(data.sender_user_id).first_name
Redis:set(TheMero..data.sender_user_id.."first_name:", F_Name)
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
news = news:gsub("🇾🇪️",'')
news = news:gsub("🇹🇳",'')
news = news:gsub("🇸🇾",'')
news = news:gsub("🇸🇩",'')
news = news:gsub("🇸🇦",'')
news = news:gsub("🇶🇦",'')
news = news:gsub("🇵🇸",'')
news = news:gsub("🇴🇲",'')
news = news:gsub("🇲🇦",'')
news = news:gsub("🇱🇾",'')
news = news:gsub("🇱🇧",'')
news = news:gsub("🇰🇼️",'')
news = news:gsub("🇯🇴",'')
news = news:gsub("🇮🇶",'')
news = news:gsub("🇪🇬",'')
news = news:gsub("🇧🇭",'')
news = news:gsub("🇩🇿️",'')
news = news:gsub("🇦🇪",'')
else
news = " لا يوجد"
end
ballancee = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local bank_users = Redis:smembers(TheMero.."booob")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد حسابات في البنك","md",true)
end
top_mony = "توب اغنى 20 شخص :\n\n"
mony_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(TheMero.."boob"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(mony_list) do
if num <= 20 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(TheMero.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_mony = top_mony..emo.." "..gflos.." 💵 l "..tt.." "..doltebank.."\n"
gflous = string.format("%.0f", ballancee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\nyou ) "..gflous.." 💵 l "..news.." \n\n⇜ ملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,top_mony..gg, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/syria') then
local UserId = Text:match('(%d+)/syria')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇸🇾"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇸🇾 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
------------------------------------------------------------------------
if Text and Text:match('/CancelChannelVip:'..tonumber(IdUser)..'(.*)') then
local UserId = Text:match('/CancelChannelVip:'..tonumber(IdUser)..'(.*)')
Redis:del(TheMero..'SetChannelVip'..IdUser)
Text = "⇜ تم الغاء حفظ قناتك"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text='Louis',url="t.me/Y88F8"}},
}}
bot.editMessageText(ChatId,msg_id,Text, 'md', true, false, reply_markup)
return false
end
if Text and Text:match('/ChangeChannelVip:'..tonumber(IdUser)..'(.*)') then
local UserId = Text:match('/ChangeChannelVip:'..tonumber(IdUser)..'(.*)')
Redis:set(TheMero..'SetChannelVip'..IdUser,true)
local Text = "⇜ ارسل لي قناتك الان"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text=" الغاء ",data="/CancelChannelVip:"..IdUser}},
{{text='Louis',url="t.me/Y88F8"}},
}}
bot.editMessageText(ChatId,msg_id,Text, 'md', true, false, reply_markup)
return false
end
if Redis:get(TheMero..'SetChannelVip'..IdUser) then 
if text =='الغاء' then 
bot.sendText(msg_chat_id,msg_id, '⇜ تم الغاء حفظ قناتك ',"md",true)  
Redis:del(TheMero..'SetChannelVip'..IdUser)
return false  
end 
Redis:del(TheMero..'SetChannelVip'..IdUser)
Redis:set(TheMero..'SOFI:Channel:Vip'..IdUser,text)
local text = "⇜ تم حفظ قناتك"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text="• تغيير قناتي •",data="/ChangeChannelVip:"..IdUser},{text="• مسح قناتي •",data="/DelChannelVip:"..IdUser}},
{{text="• اخفاء •",data="/HideChannelVip:"..IdUser}},
{{text='Louis',url="t.me/Y88F8"}},
}}
bot.editMessageText(ChatId,msg_id,text, 'md', true, false, reply_markup)
return false   
end
if Text and Text:match('/DelChannelVip:'..tonumber(IdUser)..'(.*)') then
local UserId = Text:match('/DelChannelVip:'..tonumber(IdUser)..'(.*)')
Redis:del(TheMero..'SOFI:Channel:Vip'..IdUser)
Text = "⇜ تم حذف قناتك"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text="• وضع قناتي •",data="/ChangeChannelVip:"..IdUser}},
{{text="• اخفاء •",data="/HideChannelVip:"..IdUser}},
{{text='Louis',url="t.me/Y88F8"}},
}}
bot.editMessageText(ChatId,msg_id,Text, 'md', true, false, reply_markup)
return false
end
if Text and Text:match('/HideChannelVip:(.*)') then
local UserId = Text:match('/HideChannelVip:(.*)')
if tonumber(UserId) == tonumber(IdUser) then
bot.editMessageText(ChatId,msg_id,"⇜ تم اخفاء امر وضع قناتي","md",true)
else
return bot.answerCallbackQuery(data.id, "• عذراً الامر ليس لك •", true)
end
end
------------------------
if Text and Text:match('(%d+)/sudia') then
local UserId = Text:match('(%d+)/sudia')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇸🇦"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇸🇦 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/iraqq') then
local UserId = Text:match('(%d+)/iraqq')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇮🇶"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇮🇶 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/yemen') then
local UserId = Text:match('(%d+)/yemen')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇾🇪"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇾🇪 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/tunsia') then
local UserId = Text:match('(%d+)/tunsia')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇹🇳"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇹🇳 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/qatar') then
local UserId = Text:match('(%d+)/qatar')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇶🇦"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇶🇦 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/sudan') then
local UserId = Text:match('(%d+)/sudan')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇸🇩"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇸🇩 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/plastin') then
local UserId = Text:match('(%d+)/plastin')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇵🇸"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇵🇸 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/moroco') then
local UserId = Text:match('(%d+)/moroco')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇲🇦"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇲🇦 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/oman') then
local UserId = Text:match('(%d+)/oman')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇴🇲"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇴🇲 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/libya') then
local UserId = Text:match('(%d+)/libya')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇱🇾"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇱🇾 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/kuwit') then
local UserId = Text:match('(%d+)/kuwit')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇰🇼"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇰🇼 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lebanon') then
local UserId = Text:match('(%d+)/lebanon')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇱🇧"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇱🇧 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/jordan') then
local UserId = Text:match('(%d+)/jordan')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇯🇴"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇯🇴 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/bahren') then
local UserId = Text:match('(%d+)/bahren')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇧🇭"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇧🇭 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/egypt') then
local UserId = Text:match('(%d+)/egypt')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇪🇬"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇪🇬 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/algeria') then
local UserId = Text:match('(%d+)/algeria')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇩🇿"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇩🇿 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/emarite') then
local UserId = Text:match('(%d+)/emarite')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇦🇪"
Redis:set(TheMero.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(TheMero.."boobb"..data.sender_user_id)
ccctype = Redis:get(TheMero.."bbobb"..data.sender_user_id)
shakse = Redis:get(TheMero.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك لويس\n⇜ وشحنالك ٥٠ درهم 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ريال 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇦🇪 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
------------------------------------------------------------------------
if Text and Text:match('(%d+)/msalm') then
local UserId = Text:match('(%d+)/msalm')
if tonumber(data.sender_user_id) == tonumber(UserId) then
shakse = "طيبة"
Redis:set(TheMero.."shkse"..data.sender_user_id,shakse)
ttshakse = '⇜ اختر دولتك'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '🇸🇾', data = data.sender_user_id..'/syria'},{text = '🇸🇦', data = data.sender_user_id..'/sudia'},{text = '🇮🇶', data = data.sender_user_id..'/iraqq'},
},{
{text = '🇾🇪', data = data.sender_user_id..'/yemen'},{text = '🇹🇳', data = data.sender_user_id..'/tunsia'},{text = '🇶🇦', data = data.sender_user_id..'/qatar'},
},{
{text = '🇸🇩', data = data.sender_user_id..'/sudan'},{text = '🇵🇸', data = data.sender_user_id..'/plastin'},{text = '🇲🇦', data = data.sender_user_id..'/moroco'},
},{
{text = '🇴🇲', data = data.sender_user_id..'/oman'},{text = '🇱🇾', data = data.sender_user_id..'/libya'},{text = '🇰🇼', data = data.sender_user_id..'/kuwit'},
},{
{text = '🇱🇧', data = data.sender_user_id..'/lebanon'},{text = '🇯🇴', data = data.sender_user_id..'/jordan'},{text = '🇧🇭', data = data.sender_user_id..'/bahren'},
},{
{text = '🇪🇬', data = data.sender_user_id..'/egypt'},{text = '🇩🇿', data = data.sender_user_id..'/algeria'},{text = '🇦🇪', data = data.sender_user_id..'/emarite'},
},
{text = 'Louis',url="t.me/Y88F8"}, 
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/shrer') then
local UserId = Text:match('(%d+)/shrer')
if tonumber(data.sender_user_id) == tonumber(UserId) then
shakse = "شريرة"
Redis:set(TheMero.."shkse"..data.sender_user_id,shakse)
ttshakse = '⇜ اختر دولتك '
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '🇸🇾', data = data.sender_user_id..'/syria'},{text = '🇸🇦', data = data.sender_user_id..'/sudia'},{text = '🇮🇶', data = data.sender_user_id..'/iraqq'},
},{
{text = '🇾🇪', data = data.sender_user_id..'/yemen'},{text = '🇹🇳', data = data.sender_user_id..'/tunsia'},{text = '🇶🇦', data = data.sender_user_id..'/qatar'},
},{
{text = '🇸🇩', data = data.sender_user_id..'/sudan'},{text = '🇵🇸', data = data.sender_user_id..'/plastin'},{text = '🇲🇦', data = data.sender_user_id..'/moroco'},
},{
{text = '🇴🇲', data = data.sender_user_id..'/oman'},{text = '🇱🇾', data = data.sender_user_id..'/libya'},{text = '🇰🇼', data = data.sender_user_id..'/kuwit'},
},{
{text = '🇱🇧', data = data.sender_user_id..'/lebanon'},{text = '🇯🇴', data = data.sender_user_id..'/jordan'},{text = '🇧🇭', data = data.sender_user_id..'/bahren'},
},{
{text = '🇪🇬', data = data.sender_user_id..'/egypt'},{text = '🇩🇿', data = data.sender_user_id..'/algeria'},{text = '🇦🇪', data = data.sender_user_id..'/emarite'},
},
{text = 'Louis',url="t.me/Y88F8"}, 
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/master') then
local UserId = Text:match('(%d+)/master')
if tonumber(data.sender_user_id) == tonumber(UserId) then
creditcc = math.random(5000000000000000,5999999999999999);
mast = "ماستر"
balas = 50
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = data.sender_user_id
Redis:set(TheMero.."bobna"..data.sender_user_id,news)
Redis:set(TheMero.."boob"..data.sender_user_id,balas)
Redis:set(TheMero.."boobb"..data.sender_user_id,creditcc)
Redis:set(TheMero.."bbobb"..data.sender_user_id,mast)
Redis:set(TheMero.."boballname"..creditcc,news)
Redis:set(TheMero.."boballbalc"..creditcc,balas)
Redis:set(TheMero.."boballcc"..creditcc,creditcc)
Redis:set(TheMero.."boballban"..creditcc,mast)
Redis:set(TheMero.."boballid"..creditcc,banid)
Redis:sadd(TheMero.."booob",data.sender_user_id)
ttshakse = '⇜ اختر شخصيتك في اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شخصية طيبة 😇', data = data.sender_user_id..'/msalm'},{text = 'شخصية شريرة 😈', data = data.sender_user_id..'/shrer'},
},
{text = 'Louis',url="t.me/Y88F8"}, 
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end


if Text and Text:match('(%d+)/visaa') then
local UserId = Text:match('(%d+)/visaa')
if tonumber(data.sender_user_id) == tonumber(UserId) then
creditvi = math.random(4000000000000000,4999999999999999);
visssa = "فيزا"
balas = 50
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = data.sender_user_id
Redis:set(TheMero.."bobna"..data.sender_user_id,news)
Redis:set(TheMero.."boob"..data.sender_user_id,balas)
Redis:set(TheMero.."boobb"..data.sender_user_id,creditvi)
Redis:set(TheMero.."bbobb"..data.sender_user_id,visssa)
Redis:set(TheMero.."boballname"..creditvi,news)
Redis:set(TheMero.."boballbalc"..creditvi,balas)
Redis:set(TheMero.."boballcc"..creditvi,creditvi)
Redis:set(TheMero.."boballban"..creditvi,visssa)
Redis:set(TheMero.."boballid"..creditvi,banid)
Redis:sadd(TheMero.."booob",data.sender_user_id)
ttshakse = '⇜ اختر شخصيتك في اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شخصية طيبة 😇', data = data.sender_user_id..'/msalm'},{text = 'شخصية شريرة 😈', data = data.sender_user_id..'/shrer'},
},
{text = 'Louis',url="t.me/Y88F8"}, 
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/express') then
local UserId = Text:match('(%d+)/express')
if tonumber(data.sender_user_id) == tonumber(UserId) then
creditex = math.random(6000000000000000,6999999999999999);
exprs = "اكسبرس"
balas = 50
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = data.sender_user_id
Redis:set(TheMero.."bobna"..data.sender_user_id,news)
Redis:set(TheMero.."boob"..data.sender_user_id,balas)
Redis:set(TheMero.."boobb"..data.sender_user_id,creditex)
Redis:set(TheMero.."bbobb"..data.sender_user_id,exprs)
Redis:set(TheMero.."boballname"..creditex,news)
Redis:set(TheMero.."boballbalc"..creditex,balas)
Redis:set(TheMero.."boballcc"..creditex,creditex)
Redis:set(TheMero.."boballban"..creditex,exprs)
Redis:set(TheMero.."boballid"..creditex,banid)
Redis:sadd(TheMero.."booob",data.sender_user_id)
ttshakse = '⇜ اختر شخصيتك في اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شخصية طيبة 😇', data = data.sender_user_id..'/msalm'},{text = 'شخصية شريرة 😈', data = data.sender_user_id..'/shrer'},
},
{text = 'Louis',url="t.me/Y88F8"}, 
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/sahb') then
local UserId = Text:match('(%d+)/sahb')
if tonumber(data.sender_user_id) == tonumber(UserId) then
cccall = Redis:get(TheMero.."tdbelballance"..data.sender_user_id) or 0
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(cccall) then
return edit(ChatId,Msg_id, "⇜ فلوسك ماتكفي","md",true)
end
Redis:setex(TheMero.."iioood" .. data.sender_user_id,920, true)
local list = {"1", "2", "3"}
local rand = list[math.random(#list)]
if rand == "1" then -- 1 con
cccallcc = tonumber(ballance) + tonumber(cccall)
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
Redis:del(TheMero.."tdbelballance"..data.sender_user_id)
local convert_mony = string.format("%.0f",cccall)
local convert_monyy = string.format("%.0f",cccallcc)
msalm = "⌯ مبروك ربحت بالسحب\n\n⇜ المبلغ : "..convert_mony.."\nرصيدك الان : `"..convert_monyy.."`\n✧"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
return edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end -- 1 con
if rand == "2" then -- 2 con
Redis:del(TheMero.."tdbelballance"..data.sender_user_id)
local convert_mony = string.format("%.0f",cccall)
local convert_monyy = string.format("%.0f",ballance)
msalm = "⌯ حظ اوفر ماربحت شي\n\n⇜ المبلغ : "..convert_mony.."\n⇜ رصيدك الان : `"..convert_monyy.."`\n✧"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
return edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end -- 2 con
if rand == "3" then -- 3 con
cccallcc = tonumber(ballance) - tonumber(cccall)
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
cccall = Redis:get(TheMero.."tdbelballance"..data.sender_user_id)
Redis:del(TheMero.."tdbelballance"..data.sender_user_id)
local convert_mony = string.format("%.0f",cccall)
local convert_monyy = string.format("%.0f",cccallcc)
msalm = "⌯ خسرت بالسحب ☹️\n\n⇜ المبلغ : "..convert_mony.."\nرصيدك الان : `"..convert_monyy.."`\n✧"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'Louis',url="t.me/Y88F8"}, 
},
}
}
return edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end -- 3 con 
end
end
if Text and Text:match('(%d+)/4×4') then
local UserId = Text:match('(%d+)/4×4')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(10000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 10000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(TheMero.."namefram"..data.sender_user_id)
Redis:sadd(TheMero.."farmarname", namefram)
Redis:set(TheMero.."sizefram"..data.sender_user_id,50000)
Redis:sadd(TheMero.."ownerfram",data.sender_user_id)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 4×4\n⇜ السعر : 10000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/8×8') then
local UserId = Text:match('(%d+)/8×8')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(1000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(TheMero.."namefram"..data.sender_user_id)
Redis:sadd(TheMero.."farmarname", namefram)
Redis:set(TheMero.."sizefram"..data.sender_user_id,100000)
Redis:sadd(TheMero.."ownerfram",data.sender_user_id)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 8×8\n⇜ السعر : 100000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/12×12') then
local UserId = Text:match('(%d+)/12×12')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(1000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 1000000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(TheMero.."namefram"..data.sender_user_id)
Redis:sadd(TheMero.."farmarname", namefram)
Redis:set(TheMero.."sizefram"..data.sender_user_id,200000)
Redis:sadd(TheMero.."ownerfram",data.sender_user_id)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 12×12\n⇜ السعر : 1000000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/16×16') then
local UserId = Text:match('(%d+)/16×16')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(5000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 5000000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(TheMero.."namefram"..data.sender_user_id)
Redis:sadd(TheMero.."farmarname", namefram)
Redis:set(TheMero.."sizefram"..data.sender_user_id,300000)
Redis:sadd(TheMero.."ownerfram",data.sender_user_id)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 16×16\n⇜ السعر : 5000000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/32×32') then
local UserId = Text:match('(%d+)/32×32')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(10000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 10000000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(TheMero.."namefram"..data.sender_user_id)
Redis:sadd(TheMero.."farmarname", namefram)
Redis:set(TheMero.."sizefram"..data.sender_user_id,400000)
Redis:sadd(TheMero.."ownerfram",data.sender_user_id)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 32×32\n⇜ السعر : 10000000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
--------------------------------------------------------------------------------------------------------------
if Text and Text:match('(%d+)/luisyes') then
local UserId = Text:match('(%d+)/luisyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(39000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 39000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "لويس سواريز"
energyplayer = "83"
mrkzplayer = "مهاجم"
cityplayer = "🇺🇦 اوكرانيا"
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,39000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : لويس سواريز\n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 83\n⇜ الجنسية : اوكرانيا 🇺🇦\n⇜ السعر : 39000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/luisno') then
local UserId = Text:match('(%d+)/luisno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب لويس سواريز ", 'md', true)
end
end
if Text and Text:match('(%d+)/danyes') then
local UserId = Text:match('(%d+)/danyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(50000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 50000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "داني الفيش"
energyplayer = "83"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷"
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,50000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : داني الفيش\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 83\n⇜ الجنسية : البرازيل 🇧🇷\n⇜ السعر : 50000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/danno') then
local UserId = Text:match('(%d+)/danno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب داني الفيش", 'md', true)
end
end
if Text and Text:match('(%d+)/fdnyes') then
local UserId = Text:match('(%d+)/fdnyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فيل فودن"
energyplayer = "87"
mrkzplayer = "وسط"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 "
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,70000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فيل فودن\n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿  \n⇜ السعر : 70000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fdnno') then
local UserId = Text:match('(%d+)/fdnno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب داني الفيش", 'md', true)
end
end
if Text and Text:match('(%d+)/rafyes') then
local UserId = Text:match('(%d+)/rafyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(40000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 40000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "رافيل فاران"
energyplayer = "84"
mrkzplayer = "مدافع"
cityplayer = "فرنسا 🇫🇷 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,40000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : رافيل فاران\n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : فرنسا 🇫🇷 \n⇜ السعر : 40000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/rafno') then
local UserId = Text:match('(%d+)/rafno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب رافيل فاران", 'md', true)
end
end
if Text and Text:match('(%d+)/Kuanyes') then
local UserId = Text:match('(%d+)/Kuanyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "خوان ماتا"
energyplayer = "81"
mrkzplayer = "وسط"
cityplayer = "إسبانيا 🇪🇸 "
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,20000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : خوان ماتا\n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : إسبانيا 🇪🇸 \n⇜ السعر : 20000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/kuanno') then
local UserId = Text:match('(%d+)/kuanno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب خوان ماتا", 'md', true)
end
end
if Text and Text:match('(%d+)/hariyes') then
local UserId = Text:match('(%d+)/hariyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(15000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 15000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "هاري ماجواير"
energyplayer = "80"
mrkzplayer = "مدافع"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,15000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : هاري ماجواير\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 80\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 15000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/harino') then
local UserId = Text:match('(%d+)/harino')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب هاري ماجواير", 'md', true)
end
end
if Text and Text:match('(%d+)/romoyes') then
local UserId = Text:match('(%d+)/romoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "روميلو لوكاكو"
energyplayer = "91"
mrkzplayer = "مهاجم"
cityplayer = "بلجيكا 🇧🇪 "
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,100000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : روميلو لوكاكو\n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : بلجيكا 🇧🇪 \n⇜ السعر : 100000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/romono') then
local UserId = Text:match('(%d+)/romono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب روميلو لوكاكو", 'md', true)
end
end
if Text and Text:match('(%d+)/tiagoyes') then
local UserId = Text:match('(%d+)/tiagoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "تياجو سيلفا"
energyplayer = "81"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,20000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : تياجو سيلفا\n⇜ مركزه : دفاع\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 20000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/tiagono') then
local UserId = Text:match('(%d+)/tiagono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب تياجو سيلفا", 'md', true)
end
end
if Text and Text:match('(%d+)/gerardyes') then
local UserId = Text:match('(%d+)/gerardyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(30000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 30000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جيرارد بيكيه"
energyplayer = "83"
mrkzplayer = "مدافع"
cityplayer = "إسبانيا 🇪🇸 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,30000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جيرارد بيكيه\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 83\n⇜ الجنسية : إسبانيا 🇪🇸 \n⇜ السعر : 30000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/gerardno') then
local UserId = Text:match('(%d+)/gerardno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جيرارد بيكه", 'md', true)
end
end
if Text and Text:match('(%d+)/tyryes') then
local UserId = Text:match('(%d+)/tyryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(110000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 110000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "تير شتيجن"
energyplayer = "91"
mrkzplayer = "حارس"
cityplayer = "ألمانيا 🇩🇪 "
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,110000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : تير شتيجن\n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : ألمانيا 🇩🇪 \n⇜ السعر : 110000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/tyrno') then
local UserId = Text:match('(%d+)/tyrno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب تير شتيجن", 'md', true)
end
end
if Text and Text:match('(%d+)/osmanyes') then
local UserId = Text:match('(%d+)/osmanyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(45000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 45000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "عثمان ديمبلي"
energyplayer = "84"
mrkzplayer = "جناح"
cityplayer = "فرنسا 🇫🇷 "
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,45000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : عثمان ديمبلي\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : فرنسا 🇫🇷 \n⇜ السعر : 45000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/osmanno') then
local UserId = Text:match('(%d+)/osmanno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب عثمان ديمبلي", 'md', true)
end
end
if Text and Text:match('(%d+)/rodrigoyes') then
local UserId = Text:match('(%d+)/rodrigoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(78000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 78000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "رودريغو"
energyplayer = "87"
mrkzplayer = "جناح"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,78000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : رودريغو\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : البرازيل 🇧🇷\n⇜ السعر : 78000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/rodrigono') then
local UserId = Text:match('(%d+)/rodrigono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب رودريغو", 'md', true)
end
end
if Text and Text:match('(%d+)/milyes') then
local UserId = Text:match('(%d+)/milyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(65000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 65000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ميليتاو"
energyplayer = "87"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,65000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ميليتاو\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : البرازيل 🇧🇷\n⇜ السعر : 65000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/milno') then
local UserId = Text:match('(%d+)/milno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ميليتاو", 'md', true)
end
end
if Text and Text:match('(%d+)/albayes') then
local UserId = Text:match('(%d+)/albayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(73000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 73000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "الابا"
energyplayer = "87"
mrkzplayer = "مدافع"
cityplayer = "النمسا 🇦🇹 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,73000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : الابا\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : النمسا 🇦🇹 \n⇜ السعر : 73000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/albano') then
local UserId = Text:match('(%d+)/albano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب الابا", 'md', true)
end
end
if Text and Text:match('(%d+)/fenesyes') then
local UserId = Text:match('(%d+)/fenesyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(180000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 180000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فينيسيوس"
energyplayer = "94"
mrkzplayer = "جناح"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,180000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فينيسيوس \n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 94\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 180000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fenesno') then
local UserId = Text:match('(%d+)/fenesno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب فينيسيوس ", 'md', true)
end
end
if Text and Text:match('(%d+)/demayes') then
local UserId = Text:match('(%d+)/demayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(55000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 55000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دي ماريا"
energyplayer = "85"
mrkzplayer = "جناح"
cityplayer = "الأرجنتين 🇦🇷 "
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,55000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دي ماريا \n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : الأرجنتين 🇦🇷 \n⇜ السعر : 55000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/demano') then
local UserId = Text:match('(%d+)/demano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دي ماريا ", 'md', true)
end
end
if Text and Text:match('(%d+)/danilyes') then
local UserId = Text:match('(%d+)/danilyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دانيلو"
energyplayer = "84"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,20000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دانيلو \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 82\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 20000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/danilno') then
local UserId = Text:match('(%d+)/danilno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دانيلو ", 'md', true)
end
end
if Text and Text:match('(%d+)/daneleyes') then
local UserId = Text:match('(%d+)/daneleyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(38000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 38000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دانييلي"
energyplayer = "84"
mrkzplayer = "مدافع"
cityplayer = "إيطاليا 🇮🇹 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,38000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دانييلي \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : إيطاليا 🇮🇹 \n⇜ السعر : 38000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/daneleno') then
local UserId = Text:match('(%d+)/daneleno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دانييلي ", 'md', true)
end
end
if Text and Text:match('(%d+)/ibrahyes') then
local UserId = Text:match('(%d+)/ibrahyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(55000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 55000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "إبراهيموفيتش"
energyplayer = "85"
mrkzplayer = "مهاجم"
cityplayer = "السويد 🇸🇪 "
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,55000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : إبراهيموفيتش \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : السويد 🇸🇪 \n⇜ السعر : 55000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/ibrahno') then
local UserId = Text:match('(%d+)/ibrahno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب إبراهيموفيتش", 'md', true)
end
end
if Text and Text:match('(%d+)/donaryes') then
local UserId = Text:match('(%d+)/donaryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(99000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 99000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دوناروما"
energyplayer = "89"
mrkzplayer = "حارس"
cityplayer = "إيطاليا 🇮🇹 "
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,99000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دوناروما \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 89\n⇜ الجنسية : إيطاليا 🇮🇹 \n⇜ السعر : 99000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/donarno') then
local UserId = Text:match('(%d+)/donarno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دوناروما ", 'md', true)
end
end
if Text and Text:match('(%d+)/ashrfyes') then
local UserId = Text:match('(%d+)/ashrfyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(55000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 55000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "اشرف حكيمي"
energyplayer = "85"
mrkzplayer = "مدافع"
cityplayer = "المغرب 🇲🇦 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,55000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : اشرف حكيمي \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : المغرب 🇲🇦 \n⇜ السعر : 55000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/ashrfno') then
local UserId = Text:match('(%d+)/ashrfno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب اشرف حكيمي ", 'md', true)
end
end
if Text and Text:match('(%d+)/idenyes') then
local UserId = Text:match('(%d+)/idenyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(59000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 59000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ايدن ازارد"
energyplayer = "86"
mrkzplayer = "جناح"
cityplayer = "بلجيكا 🇧🇪 "
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,59000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ايدن ازارد \n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 86\n⇜ الجنسية : بلجيكا 🇧🇪 \n⇜ السعر : 59000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/idenno') then
local UserId = Text:match('(%d+)/idenno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ايدن ازارد ", 'md', true)
end
end
if Text and Text:match('(%d+)/sergyes') then
local UserId = Text:match('(%d+)/sergyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(170000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 170000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "سيرجو راموس"
energyplayer = "93"
mrkzplayer = "مدافع"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(TheMero.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."4"..data.sender_user_id,170000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ايدن ازارد \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 93\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 170000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sergno') then
local UserId = Text:match('(%d+)/sergno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب سيرجيو راموس ", 'md', true)
end
end
if Text and Text:match('(%d+)/fermyes') then
local UserId = Text:match('(%d+)/fermyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(60000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 60000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فرمينو"
energyplayer = "86"
mrkzplayer = "مهاجم"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,60000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فرمينو \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 86\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 60000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fermno') then
local UserId = Text:match('(%d+)/fermno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب فرمينو ", 'md', true)
end
end
if Text and Text:match('(%d+)/jackyes') then
local UserId = Text:match('(%d+)/jackyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(19000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 19000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جاك كلارك"
energyplayer = "81"
mrkzplayer = "مهاجم"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 "
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,19000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جاك كلارك \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 19000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/jackno') then
local UserId = Text:match('(%d+)/jackno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جاك كلارك ", 'md', true)
end
end
if Text and Text:match('(%d+)/ansloyes') then
local UserId = Text:match('(%d+)/ansloyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(53000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 53000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "انسلو فاتي"
energyplayer = "84"
mrkzplayer = "مهاجم"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,53000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : انسلو فاتي \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 53000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/anslono') then
local UserId = Text:match('(%d+)/anslono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب انسلو فاتي ", 'md', true)
end
end
if Text and Text:match('(%d+)/toresyes') then
local UserId = Text:match('(%d+)/toresyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(41000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 41000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "توريس"
energyplayer = "84"
mrkzplayer = "مهاجم"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,41000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : توريس \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 41000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/toresno') then
local UserId = Text:match('(%d+)/toresno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب توريس ", 'md', true)
end
end
if Text and Text:match('(%d+)/muleryes') then
local UserId = Text:match('(%d+)/muleryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "توماس مولر"
energyplayer = "87"
mrkzplayer = "وسط"
cityplayer = "ألمانيا 🇩🇪"
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,41000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : توماس مولر \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : ألمانيا 🇩🇪 \n⇜ السعر : 41000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/mulerno') then
local UserId = Text:match('(%d+)/mulerno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب توماس مولر ", 'md', true)
end
end
if Text and Text:match('(%d+)/brunoyes') then
local UserId = Text:match('(%d+)/brunoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(74000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 74000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "برونو فيرنانديز"
energyplayer = "86"
mrkzplayer = "وسط"
cityplayer = "البرتغال 🇵🇹"
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,74000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : برونو فيرنانديز \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : البرتغال 🇵🇹 \n⇜ السعر : 74000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/brunono') then
local UserId = Text:match('(%d+)/brunono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب برونو فيرنانديز", 'md', true)
end
end
if Text and Text:match('(%d+)/paulyes') then
local UserId = Text:match('(%d+)/paulyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(78000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 78000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "بول بوجبا"
energyplayer = "88"
mrkzplayer = "وسط"
cityplayer = "فرنسا 🇫🇷 "
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,78000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : بول بوجبا \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : فرنسا 🇫🇷 \n⇜ السعر : 78000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/paulno') then
local UserId = Text:match('(%d+)/paulno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب بول بوجبا", 'md', true)
end
end
if Text and Text:match('(%d+)/modricyes') then
local UserId = Text:match('(%d+)/modricyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(90000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 90000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "لوكا مودريتش"
energyplayer = "90"
mrkzplayer = "وسط"
cityplayer = "كرواتيا 🇭🇷 "
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,90000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : لوكا مودريتش \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 90\n⇜ الجنسية : كرواتيا 🇭🇷 \n⇜ السعر : 90000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/modricno') then
local UserId = Text:match('(%d+)/modricno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب لوكا مودريتش", 'md', true)
end
end
if Text and Text:match('(%d+)/iscoyes') then
local UserId = Text:match('(%d+)/iscoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(41000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 41000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "إيسكو"
energyplayer = "84"
mrkzplayer = "وسط"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,41000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : إيسكو \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 41000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/iscono') then
local UserId = Text:match('(%d+)/iscono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب إيسكو ", 'md', true)
end
end
if Text and Text:match('(%d+)/fabinyes') then
local UserId = Text:match('(%d+)/fabinyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فابينهو"
energyplayer = "81"
mrkzplayer = "وسط"
cityplayer = "البرازيل 🇧🇷  "
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,20000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فابينهو \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 20000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fabinno') then
local UserId = Text:match('(%d+)/fabinno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب فابينهو ", 'md', true)
end
end
if Text and Text:match('(%d+)/hinsonyes') then
local UserId = Text:match('(%d+)/hinsonyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "هيندرسون"
energyplayer = "86"
mrkzplayer = "وسط"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿  "
Redis:set(TheMero.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."3"..data.sender_user_id,70000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : هيندرسون \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 86\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 70000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/hinsonyno') then
local UserId = Text:match('(%d+)/hinsonyno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب هيندرسون", 'md', true)
end
end
if Text and Text:match('(%d+)/janyes') then
local UserId = Text:match('(%d+)/janyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جان اوبلاك"
energyplayer = "88"
mrkzplayer = "حارس"
cityplayer = "رومانيا 🇹🇩  "
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,80000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جان اوبلاك \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : رومانيا 🇹🇩 \n⇜ السعر : 80000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/janno') then
local UserId = Text:match('(%d+)/janno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جان اوبلاك ", 'md', true)
end
end
if Text and Text:match('(%d+)/kayloryes') then
local UserId = Text:match('(%d+)/kayloryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "كيلور نافاس"
energyplayer = "87"
mrkzplayer = "حارس"
cityplayer = "كوستا ريكا🇨🇷"
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,70000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : كيلور نافاس \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : كوستا ريكا🇨🇷 \n⇜ السعر : 70000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/kaylorno') then
local UserId = Text:match('(%d+)/kaylorno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب كيلور نافاس ", 'md', true)
end
end
if Text and Text:match('(%d+)/sommeryes') then
local UserId = Text:match('(%d+)/sommeryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "يان سومر"
energyplayer = "87"
mrkzplayer = "حارس"
cityplayer = "سويسرا 🇨🇭"
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,70000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : يان سومر \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : سويسرا 🇨🇭 \n⇜ السعر : 70000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sommerno') then
local UserId = Text:match('(%d+)/sommerno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب يان سومر ", 'md', true)
end
end
if Text and Text:match('(%d+)/brendyes') then
local UserId = Text:match('(%d+)/brendyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(52000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 52000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "بيرند لينو"
energyplayer = "85"
mrkzplayer = "حارس"
cityplayer = "المانيا🇩🇪"
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,52000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : بريند لينو \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : المانيا🇩🇪 \n⇜ السعر : 52000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/brendno') then
local UserId = Text:match('(%d+)/brendnp')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب بريند لينو ", 'md', true)
end
end
if Text and Text:match('(%d+)/mendyyes') then
local UserId = Text:match('(%d+)/mendyyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ميندي"
energyplayer = "88"
mrkzplayer = "حارس"
cityplayer = "غانا 🇬🇭"
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,80000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ميندي \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : غانا 🇬🇭 \n⇜ السعر : 80000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/mendyno') then
local UserId = Text:match('(%d+)/mendyno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ميندي ", 'md', true)
end
end
if Text and Text:match('(%d+)/onanayes') then
local UserId = Text:match('(%d+)/onanayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "اندريه اونانا"
energyplayer = "83"
mrkzplayer = "حارس"
cityplayer = "غانا 🇬🇭"
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,20000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : اندريه اونانا \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 82\n⇜ الجنسية : غانا 🇬🇭 \n⇜ السعر : 20000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/onanano') then
local UserId = Text:match('(%d+)/onanano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب اندريه اونانا ", 'md', true)
end
end
if Text and Text:match('(%d+)/royyes') then
local UserId = Text:match('(%d+)/royyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(40000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 40000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "روي باتريكو"
energyplayer = "84"
mrkzplayer = "حارس"
cityplayer = "البرتغال 🇵🇹 "
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,40000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : روي باتريكو \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : البرتغال 🇵🇹 \n⇜ السعر : 40000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/royno') then
local UserId = Text:match('(%d+)/royno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب روي باتريكو ", 'md', true)
end
end
if Text and Text:match('(%d+)/kasperyes') then
local UserId = Text:match('(%d+)/kasperyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(40000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 40000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "كاسبر"
energyplayer = "84"
mrkzplayer = "حارس"
cityplayer = "الدنمارك🇩🇰"
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,40000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : كاسبر \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : الدنمارك🇩🇰 \n⇜ السعر : 40000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/kasperno') then
local UserId = Text:match('(%d+)/kasperno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب روي كاسبر ", 'md', true)
end
end
if Text and Text:match('(%d+)/geayes') then
local UserId = Text:match('(%d+)/geayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دافيد"
energyplayer = "88"
mrkzplayer = "حارس"
cityplayer = "اسبانيا 🇪🇸"
Redis:set(TheMero.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."5"..data.sender_user_id,80000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دافيد \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 80000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/geano') then
local UserId = Text:match('(%d+)/geano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دافيد ", 'md', true)
end
end
if Text and Text:match('(%d+)/felixyes') then
local UserId = Text:match('(%d+)/felixyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جواو فليكس"
energyplayer = "82"
mrkzplayer = "مهاجم"
cityplayer = "البرتغال 🇵🇹"
Redis:set(TheMero.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."1"..data.sender_user_id,20000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جواو فليكس \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 82\n⇜ الجنسية : البرتغال 🇵🇹 \n⇜ السعر : 20000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/felixno') then
local UserId = Text:match('(%d+)/felixno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جواو فليكس ", 'md', true)
end
end
if Text and Text:match('(%d+)/salahyes') then
local UserId = Text:match('(%d+)/salahyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "محمد صلاح"
energyplayer = "91"
mrkzplayer = "جناح"
cityplayer = "مصر 🇪🇬 "
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,100000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : محمد صلاح\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : مصر 🇪🇬 \n⇜ السعر : 100000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/salahno') then
local UserId = Text:match('(%d+)/salahno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب محمد صلاح", 'md', true)
end
end
if Text and Text:match('(%d+)/neymaryes') then
local UserId = Text:match('(%d+)/neymaryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "نيمار"
energyplayer = "91"
mrkzplayer = "جناح"
cityplayer = "البرازيل🇧🇷 "
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,100000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : نيمار\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : البرازيل🇧🇷 \n⇜ السعر : 100000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/neymarno') then
local UserId = Text:match('(%d+)/neymarno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب نيمار", 'md', true)
end
end
if Text and Text:match('(%d+)/sadioyes') then
local UserId = Text:match('(%d+)/sadioyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(90000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 90000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ساديو ماني"
energyplayer = "90"
mrkzplayer = "جناح"
cityplayer = "السنغال 🇸🇳"
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,90000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : نيمار\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 90\n⇜ الجنسية : السنغال 🇸🇳 \n⇜ السعر : 90000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sadiono') then
local UserId = Text:match('(%d+)/sadiono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ساديو ماني", 'md', true)
end
end
if Text and Text:match('(%d+)/rehimyes') then
local UserId = Text:match('(%d+)/rehimyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "رحيم ستيرلينغ"
energyplayer = "88"
mrkzplayer = "جناح"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,80000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : رحيم ستيرلينغ\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 80000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/rehimno') then
local UserId = Text:match('(%d+)/rehimno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب رحيم ستيرلين", 'md', true)
end
end
if Text and Text:match('(%d+)/sanchoyes') then
local UserId = Text:match('(%d+)/sanchoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "يادون سانشو"
energyplayer = "88"
mrkzplayer = "جناح"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,80000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : يادون سانشو\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 80000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sanchono') then
local UserId = Text:match('(%d+)/sanchono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب يادون سانشو", 'md', true)
end
end
if Text and Text:match('(%d+)/sonyes') then
local UserId = Text:match('(%d+)/sonyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(TheMero.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✧","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
nameplayer = "سون"
energyplayer = "88"
mrkzplayer = "جناح"
cityplayer = "كوريه الجنوبيه 🇰🇷"
Redis:set(TheMero.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(TheMero.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(TheMero.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(TheMero.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(TheMero.."priceplayer".."2"..data.sender_user_id,80000)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : يادون سانشو\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 80000 درهم 💵\n⇜ رصيدك الان : '..convert_mony..' درهم 💵\n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sonno') then
local UserId = Text:match('(%d+)/sonno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب سون", 'md', true)
end
end

if Text and Text:match('(%d+)/realm') then
local UserId = Text:match('(%d+)/realm')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(200000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 200000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "ريال مدريد"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,50)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : ريال مدريد\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 200000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/barca') then
local UserId = Text:match('(%d+)/barca')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(150000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 150000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "برشلونة"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,45)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : برشلونة\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 150000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/chels') then
local UserId = Text:match('(%d+)/chels')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(90000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 90000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "تشيلسي"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,40)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : تشيلسي\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 90000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/manun') then
local UserId = Text:match('(%d+)/manun')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "مانشستر يونايتد"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,35)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : مانشستر يونايتد\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 70000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/livb') then
local UserId = Text:match('(%d+)/livb')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(120000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 120000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "ليفربول"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,30)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : ليفربول\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 120000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/intmi') then
local UserId = Text:match('(%d+)/intmi')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(30000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 30000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "انتر ميلان"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,25)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : انتر ميلان\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 30000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/manci') then
local UserId = Text:match('(%d+)/manci')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "مانشستر سيتي"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,20)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : مانشستر سيتي\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 100000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/juvin') then
local UserId = Text:match('(%d+)/juvin')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(40000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 40000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "يوفنتوس"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,15)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : يوفنتوس\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 40000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/arsi') then
local UserId = Text:match('(%d+)/arsi')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(TheMero.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(TheMero.."lkbnade"..data.sender_user_id)
Redis:sadd(TheMero.."lkbnadesadd", lkbnade)
namenade = "ارسنال"
Redis:set(TheMero.."namenade"..data.sender_user_id,namenade)
Redis:set(TheMero.."nokatnade"..data.sender_user_id,0)
Redis:sadd(TheMero.."ownernade",data.sender_user_id)
Redis:set(TheMero.."energynade"..data.sender_user_id,10)
ballance = Redis:get(TheMero.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : ارسنال\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 20000 درهم 💵\n⇜ رصيدك الان : `'..convert_mony..'` درهم 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n✧'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('/Mahibes(%d+)') then
local GetMahibes = Text:match('/Mahibes(%d+)') 
local NumMahibes = math.random(1,6)
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if tonumber(GetMahibes) == tonumber(NumMahibes) then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..ChatId..IdUser, 1)  
MahibesText = Teext..'\n⇜ الف مبروك حظك حلو اليوم\n⇜ فزت وطلعت المحيبس باليد رقم ( '..NumMahibes..' )'
else
MahibesText = Teext..'\n⇜ للاسف لقد خسرت المحيبس باليد رقم ( '..NumMahibes..' )\n⇜ جرب حضك مرة اخرى'
end
return edit(ChatId,Msg_id,MahibesText, 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/joinhzer') then
local UserId = Text:match('(%d+)/joinhzer')
if Redis:get(TheMero.."hazrlock"..ChatId) == UserId then
if Redis:sismember(TheMero.."listhzerid"..ChatId, IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ لقد انضممت الى اللعبة مسبقاً ", true)
end
if tonumber(Redis:get(TheMero.."hazrmalek"..ChatId)) == IdUser then
return bot.answerCallbackQuery(data.id, "⇜ انتا مالك اللعبة حاليا", true)
end
Redis:sadd(TheMero.."listhzerid"..ChatId, IdUser)
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
send(ChatId,Msg_id,"\n⇜ انضم "..nameuser.." الى اللعبة \n✧","md",true)
end
end
if Text and Text:match('(%d+):kk:(%d+)/delreb:(%d+)') then
local UserId = {string.match(Text,"^(%d+):kk:(%d+)/delreb:(%d+)$")}
if tonumber(IdUser) == tonumber(UserId[3]) then
gt = "-100"..UserId[2]
bot.deleteMessages(gt,{[1]= UserId[1]})
edit(tonumber(UserId[3]),Msg_id,'⇜ تم مسح الرسالة من القروب', 'md', true)
end
end

if Text and Text:match('(.*):socl:(.*)') then
local UserId = {string.match(Text,"^(.*):socl:(.*)$")}
if Redis:get(TheMero.."soundidche"..ChatId..IdUser) == UserId[1] then
link = "https://soundcloud.com/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
os.execute("yt-dlp "..link.." --max-filesize 25M -o '"..title..".mp3'")
local titfile = io.open("./"..title..".mp3","r")
if titfile then
bot.sendAudio(ChatId,Msg_id,'./'..title..'.mp3',"- من قبل : "..nameuser.." ","md",nil,title)
bot.deleteMessages(ChatId,{[1]= Msg_id})
sleep(1)
os.remove(""..title..".mp3")
Redis:del(TheMero.."soundidche"..ChatId..IdUser)
else
Redis:del(TheMero.."soundidche"..ChatId..IdUser)
return edit(ChatId,Msg_id,'\n⇜ لا استطيع تحميل اكثر من 25 ميغا',"md",true)
end
else
bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end
end

if Text and Text:match('(.*):yout:(.*)') then
local UserId = {string.match(Text,"^(.*):yout:(.*)$")}
if Redis:get(TheMero.."youtidche"..ChatId..IdUser) == UserId[1] then
link = "https://youtu.be/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'تحميل صوت', data = title..'sound/'..UserId[2]}, {text = 'تحميل فيديو', data = title..'video/'..UserId[2]}, 
},
}
}
local txx = "["..title.."](http://youtu.be/"..UserId[2]..")\n\n- من قبل : "..nameuser.."\n✧"
bot.editMessageText(ChatId,Msg_id,txx, 'md', true, false, reply_markup)
else
bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end
end

if Text and Text:match('(.*)sound/(.*)') then
local UserId = {string.match(Text,"^(.*)sound/(.*)$")}
if Redis:get(TheMero.."youtidche"..ChatId..IdUser) == UserId[1] then
link = "https://youtu.be/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
os.execute("yt-dlp "..link.." --max-filesize 25M -f 251 -o '"..title..".mp3'")
local yosfile = io.open("./"..title..".mp3","r")
if yosfile then
bot.sendAudio(ChatId,Msg_id,'./'..title..'.mp3',"- من قبل : "..nameuser.." ","md",nil,title)
bot.deleteMessages(ChatId,{[1]= Msg_id})
sleep(1)
os.remove(""..title..".mp3")
Redis:del(TheMero.."youtidche"..ChatId..IdUser)
else
Redis:del(TheMero.."youtidche"..ChatId..IdUser)
return edit(ChatId,Msg_id,'\n⇜ لا استطيع تحميل اكثر من 25 ميغا',"md",true)
end
else
bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end
end

if Text and Text:match('(.*)video/(.*)') then
local UserId = {string.match(Text,"^(.*)video/(.*)$")}
if Redis:get(TheMero.."youtidche"..ChatId..IdUser) == UserId[1] then
link = "https://youtu.be/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
os.execute("yt-dlp "..link.." --max-filesize 50M -f 18 -o '"..title..".mp4'")
local yovfile = io.open("./"..title..".mp4","r")
if yovfile then
bot.sendVideo(IdUser,0,'./'..title..'.mp4'," ","md")
edit(ChatId,Msg_id,'( '..nameuser..' )\n⇜ تم ارسال الفيديو لك بخاص البوت', 'md', true)
sleep(2)
os.remove(""..title..".mp4")
Redis:del(TheMero.."youtidche"..ChatId..IdUser)
else
Redis:del(TheMero.."youtidche"..ChatId..IdUser)
return edit(ChatId,Msg_id,'\n⇜ لا استطيع تحميل اكثر من 50 ميغا',"md",true)
end
else
bot.answerCallbackQuery(data.id, "⇜ الامر ليس لك", true)
end
end

if Text == '/akabmute' then
local kk_id = Redis:get(TheMero.."kk_Akab"..ChatId)
if Redis:sismember(TheMero..'members_Ahkamm'..ChatId,IdUser) then
Redis:sadd(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = 'unakabmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب لعدم تنفيذه العقاب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة العقاب')..'&show_alert=true')
end
end
if Text == '/unakabmute' then
local kk_id = Redis:get(TheMero.."kk_Akab"..ChatId)
if Redis:sismember(TheMero..'members_Ahkamm'..ChatId,IdUser) then
Redis:srem(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'Louis', url = 't.me/Y88F8'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة العقاب')..'&show_alert=true')
end
end

if Text == '/ahkmute' then
local ff_id = Redis:get(TheMero.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(TheMero.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = 'unahkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب لعدم تنفيذه الاحكام").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة الاحكام')..'&show_alert=true')
end
end
if Text == '/unahkmute' then
local ff_id = Redis:get(TheMero.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(TheMero.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'اعادة الكتم', data = '/ahkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة الاحكام')..'&show_alert=true')
end
end

if Text == '/ahkkmute' then
local ff_id = Redis:get(TheMero.."ff_Ahkkam"..ChatId)
local kk_id = Redis:get(TheMero.."kk_Ahkkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = 'unahkkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب لعدم تنفذه الاحكام").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للفائز بلعبة الاحكام')..'&show_alert=true')
end
end
if Text == '/unahkkmute' then
local ff_id = Redis:get(TheMero.."ff_Ahkkam"..ChatId)
local kk_id = Redis:get(TheMero.."kk_Ahkkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'اعادة الكتم', data = '/ahkkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم الغاء كتمه في القروب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للفائز بلعبة الاحكام')..'&show_alert=true')
end
end

if Text == '/koomute' then
local kk_id = Redis:get(TheMero.."kk_koorsi"..ChatId)
if Redis:sismember(TheMero..'List_Koorsi'..ChatId,IdUser) then
Redis:sadd(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = 'unkoomute'},},}}
local TextHelp = Reply_Status(kk_id,"✦┊تم كتمه في المجمـوعـة لعـدم جوابـه اسئلـة كرسـي الاعتـراف").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('✦┊هـذا الامـر للفائـز بلعبـة الكـرسي')..'&show_alert=true')
end
end
if Text == '/unkoomute' then
local kk_id = Redis:get(TheMero.."kk_koorsi"..ChatId)
if Redis:sismember(TheMero..'List_Koorsi'..ChatId,IdUser) then
Redis:srem(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اعـادة الكتـم ✦', data = '/koomute'},},}}
local TextHelp = Reply_Status(kk_id,"✦┊تم الغـاء كتمـه في المجمـوعـة").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('✦┊هـذا الامـر للفائـز بلعبـة الكـرسي')..'&show_alert=true')
end
end

if Text == '/soomute' then
local ff_id = Redis:get(TheMero.."ff_saraha"..ChatId)
local kk_id = Redis:get(TheMero.."kk_saraha"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = 'unsoomute'},},}}
local TextHelp = Reply_Status(kk_id,"✦┊تم كتمه في المجمـوعـة لعـدم جوابـه اسئلـة لعبـة الصـراحه").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('✦┊هـذا الامـر للفائـز بلعبـة الصراحـه')..'&show_alert=true')
end
end
if Text == '/unsoomute' then
local ff_id = Redis:get(TheMero.."ff_saraha"..ChatId)
local kk_id = Redis:get(TheMero.."kk_saraha"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اعـادة الكتـم ✦', data = '/soomute'},},}}
local TextHelp = Reply_Status(kk_id,"✦┊تم الغـاء كتمـه في المجمـوعـة").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('✦┊هـذا الامـر للفائـز بلعبـة الصراحـه')..'&show_alert=true')
end
end

if Text == '/akmute' then
local ff_id = Redis:get(TheMero.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(TheMero.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = 'unakmute'},},}}
local TextHelp = Reply_Status(kk_id,"✦┊تم كتمه في المجمـوعـة لعـدم تنفيـذه الاحكام").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('✦┊هـذا الامـر للفائـز بلعبـة احكـام')..'&show_alert=true')
end
end
if Text == '/unakmute' then
local ff_id = Redis:get(TheMero.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(TheMero.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(TheMero.."SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة السـورس 𓌗.', url = 't.me/z_zzz8'},},}}
local TextHelp = Reply_Status(kk_id,"✦┊تم الغـاء كتمـه في المجمـوعـة").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('✦┊هـذا الامـر للفائـز بلعبـة احكـام')..'&show_alert=true')
end
end

if Text == '/Aktmooh' then
if not Redis:sismember(TheMero..'List_Aktooh'..ChatId,IdUser) then 
Redis:sadd(TheMero..'List_Aktooh'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGameAk"..ChatId,1400,true)
local list = Redis:smembers(TheMero..'List_Aktooh'..ChatId) 
if #list == 2 then
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name1 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name2 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == #list then
local message = '*✦┊عـدد المصـوتين ⇜*'..#list..' \n*✦┊اسمـاء المصـوتين ⇩\n'..name1..'*\n'..name2
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اضغط لـ التصـويت ✦', data = '/Aktmooh'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name1 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name2 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name3 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == #list then
local Ak_Tm = Redis:get(TheMero.."Ak_Tmooh"..ChatId)
local ban = bot.getUser(Ak_Tm)
local AkName = '['..ban.first_name..'](tg://user?id='..ban.id..')' or 'لا يوجد اسم'
local message = '*✦┊عـدد المصـوتين ⇜*'..#list..' \n*✦┊اسمـاء المصـوتين ⇩*\n'..name1..'\n'..name2..'\n'..name3..'\n\n*✦┊المستخـدم* '..AkName..'\n*✦┊تم كتمـه .. بنجـاح ✓*'
Redis:sadd(TheMero.."SilentGroup:Group"..ChatId,Ak_Tm) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ الغـاء الـ كتـم ✦', data = '/Unaktmooh'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "✦┊انت مصـوت مسبقـاً .. على الشخص", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/Unaktmooh' and Redis:get(TheMero.."Witting_StartGameAk"..ChatId) then
local raeaktooh = Redis:get(TheMero.."raeaktooh"..ChatId)
if tonumber(IdUser) == tonumber(raeaktooh) then
local list = Redis:smembers(TheMero..'List_Aktooh'..ChatId) 
local Ak_Tm = Redis:get(TheMero.."Ak_Tmooh"..ChatId)
local ban = bot.getUser(Ak_Tm)
local AkName = '['..ban.first_name..'](tg://user?id='..ban.id..')' or 'لا يوجد اسم'
local zelzzal = '*✦┊المستخـدم* '..AkName..'\n*✦┊تم الغـاء كتمـه .. بنجـاح ✓*'
Redis:srem(TheMero.."SilentGroup:Group"..ChatId,Ak_Tm)
Redis:srem(TheMero..'List_Aktooh'..ChatId,UserName) 
Redis:del(TheMero..'raeaktooh'..ChatId) 
Redis:del(TheMero..'List_Aktooh'..ChatId) 
Redis:del(TheMero.."Witting_StartGameAk"..ChatId)
Redis:del(TheMero.."Start_Aktmooh"..ChatId)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.', url = 't.me/'..chsource..''},},}}
edit(ChatId,Msg_id,zelzzal, 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "✦┊عـذراً .. الامـر ليـس لـك", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/joineahkam' then
if not Redis:sismember(TheMero..'List_Ahkkam'..ChatId,IdUser) then 
Redis:sadd(TheMero..'List_Ahkkam'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGameeh"..ChatId,1400,true)
local list = Redis:smembers(TheMero..'List_Ahkkam'..ChatId) 
if #list == 2 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local zzllzz = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},}}
edit(ChatId,Msg_id,zzllzz, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 10 then
local message = '*✦┊لقـد وصـل اللاعبيـن للحـد الاقصـى\n✦┊المشتـركيـن الـ10 فـي لعبـة احكـام هـم :*' 
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == 10 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id9 = "t.me/"..Uname
name10 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = name10, url = id9},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "✦┊انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/startahkam' and Redis:get(TheMero.."Witting_StartGameeh"..ChatId) then
local rarahkam = Redis:get(TheMero.."raeahkkam"..ChatId)
if tonumber(IdUser) == tonumber(rarahkam) then
local list = Redis:smembers(TheMero..'List_Ahkkam'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(TheMero.."kk_Ahkkam"..ChatId,UserId_Info.id)
Redis:srem(TheMero..'List_Ahkkam'..ChatId,UserName) 
local liiist = Redis:smembers(TheMero..'List_Ahkkam'..ChatId) 
local User2Name = liiist[math.random(#liiist)]
local UserId2_Info = bot.getUser(User2Name)
if UserId2_Info.username and UserId2_Info.username ~= "" then
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
else
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
end
Redis:set(TheMero.."ff_Ahkkam"..ChatId,UserId2_Info.id)
local GetLike = Redis:incrby(TheMero.."Num:Add:Ahkam"..ChatId..UserId2_Info.id, 5) 
Redis:hset(TheMero..':GroupUserCountAhkam:'..ChatId,UserId2_Info.id,GetLike)
local UserrInfo = bot.getUser(User2Name) 
if UserrInfo.first_name then
NameLUser = UserrInfo.first_name
else
NameLUser = UserrInfo.first_name
end
NameLUser = NameLUser
NameLUser = NameLUser:gsub("]","")
NameLUser = NameLUser:gsub("[[]","")
Redis:hset(TheMero..':GroupAhkamNameUser:'..ChatId,UserrInfo.id,NameLUser)
Redis:del(TheMero..'raeahkkam'..ChatId) 
Redis:del(TheMero..'List_Ahkkam'..ChatId) 
Redis:del(TheMero.."Witting_StartGameeh"..ChatId)
Redis:del(TheMero.."Start_Ahkkam"..ChatId)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ كتـم الخـاسر ✦', data = '/ahkkmute'},},}}
return edit(ChatId,Msg_id,'*⚖┊تم إختيار الشخـص ⇜* '..ls..'\n*👩🏻‍⚖┊ليتـم الحكـم عليـه من قبـل ⇜* '..Hs..'\n\n*🎁┊وتم اضـافـة 5 نقـاط للحـاكـم\n⛓┊تستطيـع كتم المتهـم اذ لم ينفـذ الحكـم*', 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "✦┊الامـر للي بـدأ اللعبـه ...", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/Koorsy' then
if not Redis:sismember(TheMero..'List_Koorsi'..ChatId,IdUser) then 
Redis:sadd(TheMero..'List_Koorsi'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGameek"..ChatId,1400,true)
local list = Redis:smembers(TheMero..'List_Koorsi'..ChatId) 
if #list == 2 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local zzllzz = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},}}
edit(ChatId,Msg_id,zzllzz, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 10 then
local message = '*✦┊لقـد وصـل اللاعبيـن للحـد الاقصـى\n✦┊المشتـركيـن الـ10 فـي لعبـة كرسـي هـم :*' 
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == 10 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id9 = "t.me/"..Uname
name10 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = name10, url = id9},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "✦┊انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/startkoorsi' and Redis:get(TheMero.."Witting_StartGameek"..ChatId) then
local rarahkam = Redis:get(TheMero.."raekoorsi"..ChatId)
if tonumber(IdUser) == tonumber(rarahkam) then
local list = Redis:smembers(TheMero..'List_Koorsi'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
local tskoorsi = math.random(1,9999999999999)
local testkoorsi = math.random(1,9999999999999)
Redis:set(TheMero.."koorsi:"..testkoorsi.."chat_id", ChatId)
Redis:set(TheMero.."koorsi:"..testkoorsi.."to", UserId_Info.id)
Redis:set(TheMero.."koorsi:"..testkoorsi.."msg_id",Msg_id)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(TheMero.."kk_koorsi"..ChatId,UserId_Info.id)
Redis:srem(TheMero..'List_Koorsi'..ChatId,UserName) 
Redis:del(TheMero..'raekoorsi'..ChatId) 
Redis:del(TheMero..'List_Koorsi'..ChatId) 
Redis:del(TheMero.."Witting_StartGameek"..ChatId)
Redis:del(TheMero.."Start_Koorsi"..ChatId)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ إضغـط لارسـال السـؤال 📬✦', url = 't.me/'..UserBot..'?start=koorsi'..testkoorsi..''}, 
},
}
}
return edit(ChatId,Msg_id,"*✦┊تـم اختيـار ⇜(*  "..ls.."  *) لـ كرسـي الاعتـراف 🪑*\n*✦┊وتـم اختيـار بقية اللاعبين كـ فائزين\n✦┊لديكـم فقـط 10 اسئلـه لـ طرحهـا على الخـاسـر*", 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "✦┊الامـر للي بـدأ اللعبـه ...", true)
end
end
---------------------- صراحه ----------------------
if Text == '/Sarraha' then
if not Redis:sismember(TheMero..'List_Saraha'..ChatId,IdUser) then 
Redis:sadd(TheMero..'List_Saraha'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGameS"..ChatId,1400,true)
local list = Redis:smembers(TheMero..'List_Saraha'..ChatId) 
if #list == 2 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local zzllzz = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},}}
edit(ChatId,Msg_id,zzllzz, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*✦┊عـدد اللاعبيـن ⇜*'..#list..' \n*✦┊لقـد انضـم للعبـة كرسـي ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 10 then
local message = '*✦┊لقـد وصـل اللاعبيـن للحـد الاقصـى\n✦┊المشتـركيـن الـ10 فـي لعبـة كرسـي هـم :*' 
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == 10 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id9 = "t.me/"..Uname
name10 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = name10, url = id9},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "✦┊انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
end
---------------------- صراحه ----------------------
if Text == '/startsaraha' and Redis:get(TheMero.."Witting_StartGameS"..ChatId) then
local rarahkam = Redis:get(TheMero.."raesaraha"..ChatId)
if tonumber(IdUser) == tonumber(rarahkam) then
local list = Redis:smembers(TheMero..'List_Saraha'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
local testsaraha = math.random(1,9999999999999)
Redis:set(TheMero.."saraha:"..testsaraha.."chat_id", ChatId)
Redis:set(TheMero.."saraha:"..testsaraha.."to", UserId_Info.id)
Redis:set(TheMero.."saraha:"..testsaraha.."msg_id",Msg_id)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(TheMero.."kk_saraha"..ChatId,UserId_Info.id)
Redis:srem(TheMero..'List_Saraha'..ChatId,UserName) 
local liiiist = Redis:smembers(TheMero..'List_Saraha'..ChatId) 
local User2Name = liiiist[math.random(#liiiist)]
local UserId2_Info = bot.getUser(User2Name)
Redis:incrby(TheMero..'Num:Add:Games'..ChatId..UserId2_Info.id,5)
Redis:set(TheMero.."ff_saraha"..ChatId,UserId2_Info.id)
Redis:del(TheMero..'raesaraha'..ChatId) 
Redis:del(TheMero..'List_Saraha'..ChatId) 
Redis:del(TheMero.."Witting_StartGameS"..ChatId)
Redis:del(TheMero.."Start_Saraha"..ChatId)
local liiist = Redis:sismember(TheMero..'List_Saraha'..ChatId,IdUser)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ إضغـط لارسـال السـؤال 📬✦', url = 't.me/'..UserBot..'?start=saraha'..testsaraha..'from_id'..UserId2_Info.id}, 
},
}
}
return edit(ChatId,Msg_id,"*✦┊صارحني بسـرية تامـه 🤔⁉️*\n\n*✦┊تـم اختيـار ⇜(*  "..ls.."  *) \n✦┊وتـم اختيـار الفـائـز واخفـائـه 🥷\n✦┊لدى الفائـز فقـط ⇜ 5 اسئلـه*", 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "✦┊الامـر للي بـدأ اللعبـه ...", true)
end
end

if Text and Text:match('/Akab(.*)') then
local UserId = Text:match('/Akab(.*)')
if Redis:sismember(TheMero..'List_Ahkamm'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "✦┊انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة ⛓ ✓", true)
Redis:sadd(TheMero..'List_Ahkamm'..ChatId,IdUser)
Redis:sadd(TheMero..'members_Ahkamm'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGamehh"..ChatId,1400,true)
end
if Text and Text:match('/Ahkam(.*)') then
local UserId = Text:match('/Ahkam(.*)')
if Redis:sismember(TheMero..'List_Ahkam'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "✦┊انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة 👩🏻‍⚖⚖ ✓", true)
Redis:sadd(TheMero..'List_Ahkam'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGameh"..ChatId,1400,true)
end
if Text and Text:match('/Korsy(.*)') then
local UserId = Text:match('/Korsy(.*)')
if Redis:sismember(TheMero..'List_Korsi'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "✦┊انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة ⛓ ✓", true)
Redis:sadd(TheMero..'List_Korsi'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGamek"..ChatId,1400,true)
end
if Text and Text:match('/Sarahy(.*)') then
local UserId = Text:match('/Sarahy(.*)')
if Redis:sismember(TheMero..'List_Saraha'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "✦┊انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة ⛓ ✓", true)
Redis:sadd(TheMero..'List_Saraha'..ChatId,IdUser)
Redis:setex(TheMero.."Witting_StartGameS"..ChatId,1400,true)
end

if Text and Text:match('(%d+)/startttahkam') and Redis:get(TheMero.."Witting_StartGameh"..ChatId) then
local UserId = Text:match('(%d+)/startttahkam')
local rarahkam = Redis:get(TheMero.."raeahkam"..ChatId)
if tonumber(IdUser) ~= tonumber(rarahkam) then
return bot.answerCallbackQuery(data.id, "✦┊الامـر للي بـدأ اللعبـه ...", true)
else
local list = Redis:smembers(TheMero..'List_Ahkam'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(TheMero.."kk_Ahkam"..ChatId,UserId_Info.id)
Redis:srem(TheMero..'List_Ahkam'..ChatId,UserId_Info.id) 
local User2Name = list[math.random(#list)]
local UserId2_Info = bot.getUser(User2Name)
if UserId2_Info.username and UserId2_Info.username ~= "" then
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
else
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
end
Redis:set(TheMero.."ff_Ahkam"..ChatId,UserId2_Info.id)
Redis:incrby(TheMero..'Num:Add:Ahkam'..ChatId..UserId2_Info.id,5)
Redis:del(TheMero..'raeahkam'..ChatId) 
Redis:del(TheMero..'List_Ahkam'..ChatId) 
Redis:del(TheMero.."Witting_StartGameh"..ChatId)
Redis:del(TheMero.."Start_Ahkam"..ChatId)
local TheMero = '*⚖┊تم إختيار الشخـص ⇜* '..ls..'\n*👩🏻‍⚖┊ليتـم الحكـم عليـه من قبـل ⇜* '..Hs..'\n\n*🎁┊وتم اضـافـة 5 نقـاط للحـاكـم*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url='http://t.me/'..chsource..''}},
}
local msg_idd = Msg_id/2097152/0.5
return https.request("https://api.telegram.org/bot"..Token..'/editMessageText?chat_id='..data.id..'&text='..URL.escape(TheMero)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if Text and Text:match('(%d+)/help1') then
local UserId = Text:match('(%d+)/help1')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '› ❶ ‹', data = IdUser..'/help1'}, {text = '❷', data = IdUser..'/help2'}, {text = '❸', data = IdUser..'/help3'},
},
{
{text = '❹', data = IdUser..'/help4'}, {text = '❺', data = IdUser..'/help5'}, {text = '❻', data = IdUser..'/help6'},
},
{
{text = 'التالي', data = IdUser..'/help2'}, {text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⤶ *اوامر الادارة*

- اوامر الرفع والتنزيل

• رفع - تنزيل ↢ مشرف
• رفع - تنزيل ↢ منشئ اساسي
• رفع - تنزيل ↢ منشئ
• رفع - تنزيل ↢ مدير
• رفع - تنزيل ↢ ادمن
• رفع - تنزيل ↢ مميز

- اوامر المسح

• مسح الكل 
• مسح المنشئين الاساسيين 
• مسح المنشئين
• مسح المدراء
• مسح الادمنيه
• مسح المميزين
• مسح المحظورين
• مسح المكتومين
• مسح قائمه المنع
• مسح الردود
• مسح الاوامر المضافه
• مسح + عدد
• مسح بالرد
• مسح الترحيب
• مسح القوانين
• مسح الرابط

- اوامر الطرد والحظر

• تقييد + الوقت
• حظر
• طرد
• كتم 
• تقييد
• الغاء حظر
• الغاء كتم
• الغاء تقييد
• رفع القيود
• منع بالرد
• طرد المحذوفين
• طرد البوتات
• كشف البوتات
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help2') then
local UserId = Text:match('(%d+)/help2')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❶', data = IdUser..'/help1'}, {text = '› ❷ ‹', data = IdUser..'/help2'}, {text = '❸', data = IdUser..'/help3'},
},
{
{text = '❹', data = IdUser..'/help4'}, {text = '❺', data = IdUser..'/help5'}, {text = '❻', data = IdUser..'/help6'},
},
{
{text = 'التالي', data = IdUser..'/help3'}, {text = 'السابق', data = IdUser..'/help1'},
},
{
{text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⤶ *اوامر الاعدادات*

- اوامر رؤية الاعدادات

• المطورين
• المنشئين الاساسيين
• المنشئين
• المدراء
• الادمنيه
• المميزين
• الساعه
• التاريخ
• القوانين
• الترحيب
• المكتومين
• المحظورين
• معلوماتي
• اوامر الفتح
• اوامر التعطيل
• المجموعه

- اوامر التحميل
• تفعيل - تعطيل ↢ التحميل
• تفعيل - تعطيل ↢ اليوتيوب
• ضع التحميل للمميزين
• ضع التحميل للاعضاء
• بحث + اسم او رابط المقطع
• تيك + رابط المقطع
• ساوند + اسم المقطع
• رابط ساوند + رابط المقطع
• فيس + رابط المقطع

- اوامر وضع الاعدادات

• انشاء رابط
• انشاء رابط خاص
• ضع رابط
• ضع صوره
• ضع وصف
• ضع قوانين
• ضع ترحيب
• وضع الرتب
• وضع قناتي
• تعين عدد الاحروف + العدد
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help3') then
local UserId = Text:match('(%d+)/help3')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❶', data = IdUser..'/help1'}, {text = '❷', data = IdUser..'/help2'}, {text = '› ❸ ‹', data = IdUser..'/help3'},
},
{
{text = '❹', data = IdUser..'/help4'}, {text = '❺', data = IdUser..'/help5'}, {text = '❻', data = IdUser..'/help6'},
},
{
{text = 'التالي', data = IdUser..'/help4'}, {text = 'السابق', data = IdUser..'/help2'},
},
{
{text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⤶ *اوامر القفل والتعطيل*

- اوامر القفل

• قفل - فتح ↢ الروابط
• قفل - فتح ↢ المعرف
• قفل - فتح ↢ التاك
• قفل - فتح ↢ الشارحة
• قفل - فتح ↢ التعديل
• قفل - فتح ↢ التثبيت
• قفل - فتح ↢ المتحركه
• قفل - فتح ↢ الشات
• قفل - فتح ↢ الصور
• قفل - فتح ↢ الملفات
• قفل - فتح ↢ البوتات
• قفل - فتح ↢ التكرار
• قفل - فتح ↢ الكلايش
• قفل - فتح ↢ الانلاين
• قفل - فتح ↢ الفيديو
• قفل - فتح ↢ السيلفي
• قفل - فتح ↢ الماركدوان
• قفل - فتح ↢ التوجيه
• قفل - فتح ↢ الاغاني
• قفل - فتح ↢ الصوت
• قفل - فتح ↢ الجهات
• قفل - فتح ↢ الاشعارات
• قفل - فتح ↢ السب
• قفل - فتح ↢ الاباحي
• قفل - فتح ↢ الوسائط
• قفل - فتح ↢ الانقليزيه
• قفل - فتح ↢ الفارسيه
• قفل - فتح ↢ تعديل الميديا
• قفل - فتح ↢ الكل

اوامر التعطيل - 

• تفعيل - تعطيل ↢ الترحيب
• تفعيل - تعطيل ↢ الردود
• تفعيل - تعطيل ↢ الرفع
• تفعيل - تعطيل ↢ الايدي
• تفعيل - تعطيل ↢ الطرد
• تفعيل - تعطيل ↢ الحظر
• تفعيل - تعطيل ↢ البنك
• تفعيل - تعطيل ↢ التحميل
• تفعيل - تعطيل ↢ الرابط
• تفعيل - تعطيل ↢ اطردني
• تفعيل - تعطيل ↢ الحظر
• تفعيل - تعطيل ↢ الحمايه
• تفعيل - تعطيل ↢ المنشن
• تفعيل - تعطيل ↢ الايدي بالصوره
• تفعيل - تعطيل ↢ التحقق
• تفعيل - تعطيل ↢ ردود المطور
• تفعيل - تعطيل ↢ الالعاب
• تفعيل - تعطيل ↢ انطق
• تفعيل - تعطيل ↢ صورتي
• تفعيل - تعطيل ↢  اسمي
• تفعيل - تعطيل ↢  منشن
• تفعيل - تعطيل ↢  الابراج
• تفعيل - تعطيل ↢  البايو
• تفعيل - تعطيل ↢  الاقتباسات
• تفعيل - تعطيل ↢  الصوتيات
• تفعيل - تعطيل ↢  ايدي العضو
• تفعيل - تعطيل ↣ ↢ نداء المالك
• تفعيل - تعطيل ↢ المسح التلقائي
• تفعيل - تعطيل ↣ ↢ ردود الاعضاء
• تفعيل - تعطيل ↢ البلاغات
• تفعيل - تعطيل ↢ القفل التلقائي
• تفعيل - تعطيل ↢ التوديع
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help4') then
local UserId = Text:match('(%d+)/help4')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❶', data = IdUser..'/help1'}, {text = '❷', data = IdUser..'/help2'}, {text = '❸', data = IdUser..'/help3'},
},
{
{text = '› ❹ ‹', data = IdUser..'/help4'}, {text = '❺', data = IdUser..'/help5'}, {text = '❻', data = IdUser..'/help6'},
},
{
{text = 'التالي', data = IdUser..'/help5'}, {text = 'السابق', data = IdUser..'/help3'},
},
{
{text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⤶ *اوامر التسليه*

- اوامر الرفع والتنزيل

• رفع - تنزيل ↢ كيكه
• رفع - تنزيل ↢ عسل
• رفع - تنزيل ↢ زق
• رفع - تنزيل ↢ حمار
• رفع - تنزيل ↢ بقره
• رفع - تنزيل ↢ كلب
• رفع - تنزيل ↢ قرد
• رفع - تنزيل ↢ تيس
• رفع - تنزيل ↢ هطف
• رفع - تنزيل ↢ خاروف
• رفع لقلبي - تنزيل من قلبي

- اوامر القائمه 

• قائمة الكيك
• قائمة العسل
• قائمة الزق
• قائمة الحمير
• قائمة البقر
• قائمة الكلاب
• قائمة القرود
• قائمة التيس
• قائمة الهطوف
• قائمة الخرفان
• قائمة قلبي
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help5') then
local UserId = Text:match('(%d+)/help5')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❶', data = IdUser..'/help1'}, {text = '❷', data = IdUser..'/help2'}, {text = '❸', data = IdUser..'/help3'},
},
{
{text = '❹', data = IdUser..'/help4'}, {text = '› ❺ ‹', data = IdUser..'/help5'}, {text = '❻', data = IdUser..'/help6'},
},
{
{text = 'التالي', data = IdUser..'/help6'}, {text = 'السابق', data = IdUser..'/help4'},
},
{
{text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⤶ *اوامر الترفيه*

• اضف ردي
• غنيلي
• ميمز 
• ثنائي 
• نبذه
• شعر
• قرأن
• الوقت 
• الساعه 
• التاريخ
• ستوري 
• لوكيت
• ريمكس
• عبارات
• انا مين
• تحدي
• اقتباس
• اقتباسات
• موسيقى 
• اقتباسات
• هيدرات 
• جداريات 
• شخصيتي 
• ايدت 
• ايدت انمي
• مسلسل - فلم
• اكتموه - بالرد
• شبيهي - شبيهتي
• تتزوجيني - بالرد
• زوجتي ↣ ↢ زوجي
• زوجني ↣ ↢ زوجيني
• معنى اسم + الاسم
• همسه - اهمس بالرد
• احسب العمر
• الطقس + اسم المدينة
• اذان + اسم المدينة
• زخرفه - زخرفه + اسم
• نسبه الحب ↣ ↢ الكره
• نسبه الذكاء ↣ ↢ الغباء
• نسبه الرجوله ↣ ↢ الانوثه
• برج + اسم برجك - صورتي
• قيفات بنات ، عيال ، كيبوب
• قيفات قطط ، كوكسال ، انمي
• افتارات بنات ، عيال ، كيبوب
• افتارات رسم ، انمي ، سنمائيه
• افتارات كيبوب ، لاعبين ، فكتوري
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help6') then
local UserId = Text:match('(%d+)/help6')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'الالعاب المتطورة', data = IdUser..'/gamesmtor'}, {text = 'لعبه البنك', data = IdUser..'/helpts'},
},
{
{text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⤶ *العاب لويس ♪ *

⇜ البنك
⇜ كرسي
⇜ حزر
⇜ صور
⇜ عقاب
⇜ احكام
⇜ مشاهير
⇜ حيوانات
⇜ زوم
⇜ المختلف
⇜ امثله 
⇜ العكس
⇜ حزوره 
⇜ معاني 
⇜ بات 
⇜ خمن 
⇜ ترتيب 
⇜ سمايلات
⇜ اسئله 
⇜ اسالني
⇜ لغز
⇜ الروليت
⇜ رياضيات 
⇜ انكليزي
⇜ اعلام 
⇜ جمل 
⇜ عواصم
⇜ كلمات 
⇜ الحظ 
⇜ حظي 
⇜ عربي 
⇜ دين
⇜ تفكيك
⇜ حجره
⇜ نمله
•• •• •• •• •• •• ••
⇜ نقاطي ↢ لعرض عدد نقاطك
⇜ بيع نقاطي + العدد
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpp6') then
local UserId = Text:match('(%d+)/helpp6')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'الالعاب المتطورة', data = IdUser..'/gamesmtor'}, {text = 'لعبه البنك', data = IdUser..'/helpts'},
},
{
{text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⤶ *العاب لويس ♪ *

⇜ البنك
⇜ كرسي
⇜ حزر
⇜ صور
⇜ عقاب
⇜ احكام
⇜ مشاهير
⇜ حيوانات
⇜ زوم
⇜ المختلف
⇜ امثله 
⇜ العكس
⇜ حزوره 
⇜ معاني 
⇜ بات 
⇜ خمن 
⇜ ترتيب 
⇜ سمايلات
⇜ اسئله 
⇜ اسالني
⇜ لغز
⇜ الروليت
⇜ رياضيات 
⇜ انكليزي
⇜ اعلام 
⇜ جمل 
⇜ عواصم
⇜ كلمات 
⇜ الحظ 
⇜ حظي 
⇜ عربي 
⇜ دين
⇜ تفكيك
⇜ حجره
⇜ نمله
•• •• •• •• •• ••
⇜ نقاطي  ↢ لعرض عدد نقاطك
⇜ بيع نقاطي + العدد
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpall') then
local UserId = Text:match('(%d+)/helpall')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❶', data = IdUser..'/help1'}, {text = '❷', data = IdUser..'/help2'},{text = '❸', data = IdUser..'/help3'},
},
{
{text = '❹', data = IdUser..'/help4'},{text = '❺', data = IdUser..'/help5'}, {text = '❻', data = IdUser..'/helpp6'},
},
{
{text = 'اوامر القفل', data = IdUser..'/NoNextSeting'}, {text = 'اوامر التعطيل', data = IdUser..'/listallAddorrem'}, 
},
}
}
local TextHelp = [[
*⤶ اهلين فيك بـ أوامر لويس

𝟏 ↢ اوامر الادارة 
𝟐 ↢ اوامر الاعدادات
𝟑 ↢ اوامر القفل والتعطيل
𝟒 ↢ اوامر التسلية
𝟓 ↢ اوامر الترفية
𝟔 ↢ اوامر الالعاب

⌯ Master* [Zaid](T.me/DevZaid)
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpsudo') and data.Developers then
local UserId = Text:match('(%d+)/helpsudo')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'القائمه الرئيسية', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
⌯ رفع - تنزيل ↣ ↢ مطور اساسي
⌯ المطورين الاساسيين
⌯ مسح المطورين الاساسيين
⌯ رفع - تنزيل ↣ ↢ MY
⌯ المطورين الثانويين  
⌯ مسح المطورين الثانويين
⌯ رفع - تنزيل ↣ ↢ مطور
⌯ المطورين ↣ ↢ مسح المطورين
⌯ تغيير المطور الاساسي
━━━━━━━━━━━
⌯ تفعيل الوضع المدفوع
⌯ الغاء الوضع المدفوع
⌯ تفعيل الوضع المدفوع + الايدي
⌯ الغاء الوضع المدفوع + الايدي
⌯ معلومات القروب + الايدي
⌯ حظر قروب + الايدي
⌯ غادر + الايدي
⌯ اسم بوتك + غادر بالقروب
⌯ تفعيل - تعطيل ↣ ↢ الاشتراك الاجباري
⌯ الاشتراك الاجباري
⌯ تغيير الاشتراك الاجباري
⌯ تعيين عدد الاعضاء + العدد
━━━━━━━━━━━
⌯ حظر عام ↣ ↢ الغاء حظر عام 
⌯ قائمه العام ↣ ↢ مسح قائمه العام
⌯ كتم عام ↣ ↢ الغاء كتم عام
⌯ المكتومين عام
⌯ مسح المكتومين عام
⌯ رفع القيود عام + المعرف 
━━━━━━━━━━━
⌯ تغيير - مسح ↣ ↢ اسم البوت
⌯ ضع صوره للترحيب 
⌯ الاحصائيات
⌯ ذيع + ايدي القروب بالرد
⌯ اذاعه ↣ ↢ اذاعه خاص
⌯ اذاعه بالتوجيه ↣ ↢ اذاعه بالتثبيت
⌯ اذاعه خاص بالتوجيه
━━━━━━━━━━━
⌯ تفعيل - تعطيل ↣ ↢ جلب النسخ تلقائي
⌯ جلب النسخه الاحتياطيه
⌯ رفع النسخه الاحتياطيه بالرد
⌯ جلب نسخه الردود 
⌯ رفع نسخه الردود بالرد
⌯ جلب نسخه الردود العامه
⌯ رفع نسخه الردود العامه بالرد
⌯ اشتراك البوت
⌯ معلومات التنصيب
━━━━━━━━━━━
⌯ تعيين - مسح ↣ ↢ الايدي عام
⌯ اضف - مسح ↣ ↢ رد عام
⌯ اضف - مسح ↣ ↢ رد عام متعدد
⌯ اضف - مسح ↣ ↢ رد مميز عام
⌯ اضف - مسح ↣ ↢ رد انلاين عام
⌯ ضع - مسح ↣ ↢ الترحيب عام 
⌯ ضع - مسح ↣ ↢ كليشه المطور 
⌯ الردود العامه ↣ ↢ مسح الردود العامه
⌯ اضف - مسح ↣ ↢ صوت عام
⌯ الصوتيات عام
⌯ مسح الصوتيات عام
⌯ تغيير رمز السورس
⌯ منع عام ↣ ↢ الغاء منع عام
⌯ قائمه المنع عام
⌯ مسح قائمه المنع عام
⌯ تفعيل - تعطيل ↣ ↢ ردود البوت عام
⌯ تفعيل - تعطيل ↣ ↢ البنك عام
━━━━━━━━━━━
⌯ اضف - مسح ↣ ↢ سؤال
⌯ الاسئله المضافه
⌯ مسح الاسئله المضافه
⌯ اضف - مسح ↣ ↢ لغز 
⌯ الالغاز ↣ ↢ مسح الالغاز
⌯ اضف - مسح ↣ ↢ سؤال كت 
⌯ اسئله كت
⌯ اضف اسئله كت
⌯ مسح اسئله كت
⌯ اضف - مسح ↣ ↢ سؤال - جمل
⌯ مسح الجمل
━━━━━━━━━━━
⌯ تفعيل - تعطيل ↓
⌯ البوت الخدمي - المغادرة - الاذاعه
⌯ التواصل - الاحصائيات
⌯ ملف ↣ ↢ اسم الملف
━━━━━━━━━━━
⌯ مسح جميع الملفات 
⌯ المتجر ↣ ↢ الملفات
⌯ تحديث ↣ ↢ تحديث السورس
━━━━━━━━━━━
⌯ رفع - تنزيل ↣ ↢ مالك اساسي
⌯ المالكين الاساسيين
⌯ مسح المالكين الاساسيين 
⌯ رفع - تنزيل ↣ ↢ مالك 
⌯ المالكين ↣ ↢ مسح المالكين
⌯ تنزيل جميع الرتب
⌯ تغيير كليشه المالك ( اذا كان حساب المالك محذوف يمكنك وضع يوزر جديد )
⌯ مسح كليشه المالك 
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpts') then
local UserId = Text:match('(%d+)/helpts')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = IdUser..'/help6'},
},
}
}
local TextHelp = [[
• اوامر البنك

⌯ انشاء حساب بنكي  ↢ تسوي حساب وتقدر تحول فلوس مع مزايا ثانيه

⌯ مسح حساب بنكي  ↢ تلغي حسابك البنكي

⌯ تحويل ↢ تطلب رقم حساب الشخص وتحول له فلوس

⌯ حسابي  ↢ يطلع لك رقم حسابك عشان تعطيه للشخص اللي بيحول لك

⌯ فلوسي ↢ يعلمك كم فلوسك

⌯ راتب ↢ يعطيك راتب كل ١٠ دقائق

⌯ بخشيش ↢ يعطيك بخشيش كل ١٠ دقايق

⌯ زرف ↢ تزرف فلوس اشخاص كل ١٠ دقايق

⌯ استثمار ↢ تستثمر بالمبلغ اللي تبيه مع نسبة ربح مضمونه من ١٪؜ الى ١٥٪؜

⌯ حظ ↢ تلعبها بأي مبلغ ياتدبله ياتخسره انت وحظك

⌯ مضاربه ↢ تضارب بأي مبلغ تبيه والنسبة من ٩٠٪؜ الى -٩٠٪؜ انت وحظك

⌯ هجوم ↢ تهجم عالخصم مع زيادة نسبة كل هجوم

⌯ كنز ↢ يعطيك كنز بسعر مختلف انتا وحظك

⌯ مراهنه ↢ تحط مبلغ وتراهن عليه

⌯ توب الفلوس ↢ يطلع توب اكثر ناس معهم فلوس بكل القروبات

⌯ توب الحراميه ↢ يطلع لك اكثر ناس زرفوا

⌯ زواج  ↢ تكتبه بالرد على رسالة شخص مع المهر ويزوجك

⌯ زواجي  ↢ يطلع وثيقة زواجك اذا متزوج

⌯ طلاق ↢ يطلقك اذا متزوج

⌯ خلع  ↢ يخلع زوجك ويرجع له المهر

⌯ زواجات ↢ يطلع اغلى ٣٠ زواجات

⌯ ترتيبي ↢ يطلع ترتيبك باللعبة

⌯ المعرض ↢ يمديك تشتري سيارات وعقارات وكثير اشياء

⌯ ممتلكاتي ↢ يطلع لك مشترياتك من المعرض

⌯ تبرع ↢ تتبرع الى افقر اللاعبين

⌯ انشاء شركه ↢ تنشئ شركتك وتضيف اصدقائك

⌯ بناء مزرعه ↢ تبني مزرعتك وتزرع وتحصد خضار

⌯ لعبه الكره ↢ تنشئ ناديك وتشتري لاعبين وتنافس الخصم
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_link') then
local UserId = Text:match('(%d+)/lock_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Link"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spam') then
local UserId = Text:match('(%d+)/lock_spam')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Spam"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypord') then
local UserId = Text:match('(%d+)/lock_keypord')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Keyboard"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voice') then
local UserId = Text:match('(%d+)/lock_voice')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:vico"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gif') then
local UserId = Text:match('(%d+)/lock_gif')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Animation"..ChatId,"del")
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_files') then
local UserId = Text:match('(%d+)/lock_files')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Document"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_text') then
local UserId = Text:match('(%d+)/lock_text')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:text"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الشات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_video') then
local UserId = Text:match('(%d+)/lock_video')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Video"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photo') then
local UserId = Text:match('(%d+)/lock_photo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Photo"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_username') then
local UserId = Text:match('(%d+)/lock_username')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:User:Name"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tags') then
local UserId = Text:match('(%d+)/lock_tags')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:hashtak"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_bots') then
local UserId = Text:match('(%d+)/lock_bots')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Bot:kick"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل البوتات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwd') then
local UserId = Text:match('(%d+)/lock_fwd')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:forward"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audio') then
local UserId = Text:match('(%d+)/lock_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Audio"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikear') then
local UserId = Text:match('(%d+)/lock_stikear')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Sticker"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phone') then
local UserId = Text:match('(%d+)/lock_phone')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Contact"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_joine') then
local UserId = Text:match('(%d+)/lock_joine')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Join"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الدخول").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_addmem') then
local UserId = Text:match('(%d+)/lock_addmem')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:AddMempar"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاضافه").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonote') then
local UserId = Text:match('(%d+)/lock_videonote')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Unsupported"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_pin') then
local UserId = Text:match('(%d+)/lock_pin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:lockpin"..ChatId,(bot.getChatPinnedMessage(ChatId).id or true)) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التثبيت").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tgservir') then
local UserId = Text:match('(%d+)/lock_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:tagservr"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاشعارات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaun') then
local UserId = Text:match('(%d+)/lock_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Markdaun"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_edits') and data.Originators then
local UserId = Text:match('(%d+)/lock_edits')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:edit"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التعديل").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_games') then
local UserId = Text:match('(%d+)/lock_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:geam"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_flood') then
local UserId = Text:match('(%d+)/lock_flood')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(TheMero.."Mero:Spam:Group:User"..ChatId ,"Spam:User","del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").Lock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkkid') then
local UserId = Text:match('(%d+)/lock_linkkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Link"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamkid') then
local UserId = Text:match('(%d+)/lock_spamkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Spam"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordkid') then
local UserId = Text:match('(%d+)/lock_keypordkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Keyboard"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicekid') then
local UserId = Text:match('(%d+)/lock_voicekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:vico"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifkid') then
local UserId = Text:match('(%d+)/lock_gifkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Animation"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fileskid') then
local UserId = Text:match('(%d+)/lock_fileskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Document"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videokid') then
local UserId = Text:match('(%d+)/lock_videokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Video"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photokid') then
local UserId = Text:match('(%d+)/lock_photokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Photo"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamekid') then
local UserId = Text:match('(%d+)/lock_usernamekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:User:Name"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagskid') then
local UserId = Text:match('(%d+)/lock_tagskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:hashtak"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdkid') then
local UserId = Text:match('(%d+)/lock_fwdkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:forward"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audiokid') then
local UserId = Text:match('(%d+)/lock_audiokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Audio"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearkid') then
local UserId = Text:match('(%d+)/lock_stikearkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Sticker"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonekid') then
local UserId = Text:match('(%d+)/lock_phonekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Contact"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotekid') then
local UserId = Text:match('(%d+)/lock_videonotekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Unsupported"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunkid') then
local UserId = Text:match('(%d+)/lock_markdaunkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Markdaun"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gameskid') then
local UserId = Text:match('(%d+)/lock_gameskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:geam"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodkid') then
local UserId = Text:match('(%d+)/lock_floodkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(TheMero.."Mero:Spam:Group:User"..ChatId ,"Spam:User","keed")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").lockKid, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkktm') then
local UserId = Text:match('(%d+)/lock_linkktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Link"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamktm') then
local UserId = Text:match('(%d+)/lock_spamktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Spam"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordktm') then
local UserId = Text:match('(%d+)/lock_keypordktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Keyboard"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicektm') then
local UserId = Text:match('(%d+)/lock_voicektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:vico"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifktm') then
local UserId = Text:match('(%d+)/lock_gifktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Animation"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_filesktm') then
local UserId = Text:match('(%d+)/lock_filesktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Document"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videoktm') then
local UserId = Text:match('(%d+)/lock_videoktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Video"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photoktm') then
local UserId = Text:match('(%d+)/lock_photoktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Photo"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamektm') then
local UserId = Text:match('(%d+)/lock_usernamektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:User:Name"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagsktm') then
local UserId = Text:match('(%d+)/lock_tagsktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:hashtak"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdktm') then
local UserId = Text:match('(%d+)/lock_fwdktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:forward"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audioktm') then
local UserId = Text:match('(%d+)/lock_audioktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Audio"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearktm') then
local UserId = Text:match('(%d+)/lock_stikearktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Sticker"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonektm') then
local UserId = Text:match('(%d+)/lock_phonektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Contact"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotektm') then
local UserId = Text:match('(%d+)/lock_videonotektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Unsupported"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunktm') then
local UserId = Text:match('(%d+)/lock_markdaunktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Markdaun"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gamesktm') then
local UserId = Text:match('(%d+)/lock_gamesktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:geam"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodktm') then
local UserId = Text:match('(%d+)/lock_floodktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(TheMero.."Mero:Spam:Group:User"..ChatId ,"Spam:User","mute")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").lockKtm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkkick') then
local UserId = Text:match('(%d+)/lock_linkkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Link"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamkick') then
local UserId = Text:match('(%d+)/lock_spamkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Spam"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordkick') then
local UserId = Text:match('(%d+)/lock_keypordkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Keyboard"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicekick') then
local UserId = Text:match('(%d+)/lock_voicekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:vico"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifkick') then
local UserId = Text:match('(%d+)/lock_gifkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Animation"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fileskick') then
local UserId = Text:match('(%d+)/lock_fileskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Document"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videokick') then
local UserId = Text:match('(%d+)/lock_videokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Video"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photokick') then
local UserId = Text:match('(%d+)/lock_photokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Photo"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamekick') then
local UserId = Text:match('(%d+)/lock_usernamekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:User:Name"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagskick') then
local UserId = Text:match('(%d+)/lock_tagskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:hashtak"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdkick') then
local UserId = Text:match('(%d+)/lock_fwdkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:forward"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audiokick') then
local UserId = Text:match('(%d+)/lock_audiokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Audio"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearkick') then
local UserId = Text:match('(%d+)/lock_stikearkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Sticker"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonekick') then
local UserId = Text:match('(%d+)/lock_phonekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Contact"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotekick') then
local UserId = Text:match('(%d+)/lock_videonotekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Unsupported"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunkick') then
local UserId = Text:match('(%d+)/lock_markdaunkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:Markdaun"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gameskick') then
local UserId = Text:match('(%d+)/lock_gameskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:geam"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodkick') then
local UserId = Text:match('(%d+)/lock_floodkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(TheMero.."Mero:Spam:Group:User"..ChatId ,"Spam:User","kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").lockKick, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/unmute_link') then
local UserId = Text:match('(%d+)/unmute_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:Link"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الرابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_welcome') then
local UserId = Text:match('(%d+)/unmute_welcome')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:Welcome"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الترحيب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_Id') then
local UserId = Text:match('(%d+)/unmute_Id')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:Id"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الايدي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_IdPhoto') then
local UserId = Text:match('(%d+)/unmute_IdPhoto')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:IdPhoto"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الايدي بالصوره").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_ryple') then
local UserId = Text:match('(%d+)/unmute_ryple')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:Reply"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الردود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_ryplesudo') then
local UserId = Text:match('(%d+)/unmute_ryplesudo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:ReplySudo"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الردود عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_setadmib') then
local UserId = Text:match('(%d+)/unmute_setadmib')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:SetId"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الرفع").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kickmembars') then
local UserId = Text:match('(%d+)/unmute_kickmembars')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:BanId"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل ( الطرد - الحظر)").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_games') then
local UserId = Text:match('(%d+)/unmute_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:Games"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kickme') then
local UserId = Text:match('(%d+)/unmute_kickme')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Status:KickMe"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل اطردني").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/mute_link') then
local UserId = Text:match('(%d+)/mute_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:Link"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الرابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_welcome') then
local UserId = Text:match('(%d+)/mute_welcome')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:Welcome"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الترحيب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_Id') then
local UserId = Text:match('(%d+)/mute_Id')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:Id"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الايدي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_IdPhoto') then
local UserId = Text:match('(%d+)/mute_IdPhoto')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:IdPhoto"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الايدي بالصوره").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_ryple') then
local UserId = Text:match('(%d+)/mute_ryple')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:Reply"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الردود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_ryplesudo') then
local UserId = Text:match('(%d+)/mute_ryplesudo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:ReplySudo"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الردود عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_setadmib') then
local UserId = Text:match('(%d+)/mute_setadmib')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:SetId"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الرفع").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kickmembars') then
local UserId = Text:match('(%d+)/mute_kickmembars')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:BanId"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل ( الطرد - الحظر )").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_games') then
local UserId = Text:match('(%d+)/mute_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:Games"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kickme') then
local UserId = Text:match('(%d+)/mute_kickme')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Status:KickMe"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل اطردني").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/addAdmins@(.*)') then
local UserId = {Text:match('(%d+)/addAdmins@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
local Info_Members = bot.getSupergroupMembers(UserId[2], "Administrators", "*", 0, 200)
local List_Members = Info_Members.members
x = 0
y = 0
for k, v in pairs(List_Members) do
if Info_Members.members[k].bot_info == nil then
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
Redis:sadd(TheMero.."Mero:TheBasicsQ:Group"..UserId[2],v.member_id.user_id) 
x = x + 1
else
Redis:sadd(TheMero.."Mero:Addictive:Group"..UserId[2],v.member_id.user_id) 
y = y + 1
end
end
end
bot.answerCallbackQuery(data.id, "⇜ تم رفع ("..y..") ادمنية \n⇜ وتم رفع المالك ", true)
end
end
if Text and Text:match('(%d+)/LockAllGroup@(.*)') then
local UserId = {Text:match('(%d+)/LockAllGroup@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:set(TheMero.."Mero:Lock:tagservrbot"..UserId[2],true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
Redis:set(TheMero..'Mero:'..lock..UserId[2],"del")    
end
bot.answerCallbackQuery(data.id, "⇜ تم قفل جميع الاوامر ", true)
end
end
if Text and Text:match('/leftgroup@(.*)') then
local UserId = Text:match('/leftgroup@(.*)')
bot.answerCallbackQuery(data.id, "⇜ تم مغادره البوت من القروب", true)
bot.leaveChat(UserId)
end
if Text and Text:match('(%d+)/trtep@(.*)') then
local UserId = {Text:match('(%d+)/trtep@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'تعط','تعطيل الايدي بالصوره')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'تفع','تفعيل الايدي بالصوره')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ا','ايدي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'م','رفع مميز')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'اد', 'رفع ادمن')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'مد','رفع مدير')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'منش', 'رفع منشئ')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'اس', 'رفع منشئ اساسي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'مط','رفع M')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'تن','تنزيل الكل')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'را','الرابط')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'رر','الردود')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'،،','مسح المكتومين')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'رد','اضف رد')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'غ','غنيلي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'رس','رسائلي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ثانوي','رفع مطور ثانوي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'مس','مسح تعديلاتي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ن','نقاطي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'س','اسالني')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ل','لغز')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'مع','معاني')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ح','حزوره')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'رف','رفع القيود')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'الغ','الغاء حظر')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ث','تثبيت')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ك','كشف')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'تت','تاك')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'تك','تاك للكل')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'تغ','تغيير الايدي')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'تنز','تنزيل جميع الرتب')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'قق','قفل الاشعارات')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'فف','فتح الاشعارات')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'مر','مسح رد')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'امر','اضف امر')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'ش','شعر')
Redis:set(TheMero.."Mero:Get:Reides:Commands:Group"..UserId[2]..":"..'غغ','اغنيه')
bot.answerCallbackQuery(data.id, "⇜ تم ترتيب الاوامر ", true)
end
end
if Text and Text:match('(%d+)/groupNumseteng//(%d+)') then
local UserId = {Text:match('(%d+)/groupNumseteng//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
return GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id)
end
end
if Text and Text:match('(%d+)/rankup//(%d+)') then
local UserId = {Text:match('(%d+)/rankup//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/sting//(%d+)') then
local UserId = {Text:match('(%d+)/sting//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
return muteUser(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/groupNum1//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum1//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).change_info) == 1 then
bot.answerCallbackQuery(data.id, "⌯ تم تعطيل صلاحيه تغيير المعلومات", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,'لا',nil,nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,0, 0, 0, 0,0,0,1,0})
else
bot.answerCallbackQuery(data.id, "⌯ تم تفعيل صلاحيه تغيير المعلومات", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,'نعم',nil,nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,1, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum2//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum2//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).pin_messages) == 1 then
bot.answerCallbackQuery(data.id, "⌯ تم تعطيل صلاحيه التثبيت", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,'لا',nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,0, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⌯ تم تفعيل صلاحيه التثبيت", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,'نعم',nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,1, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum3//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum3//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).restrict_members) == 1 then
bot.answerCallbackQuery(data.id, "⌯ تم تعطيل صلاحيه الحظر", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,'لا',nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, 0 ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⌯ تم تفعيل صلاحيه الحظر", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,'نعم',nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, 1 ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum4//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum4//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).invite_users) == 1 then
bot.answerCallbackQuery(data.id, "⌯ تم تعطيل صلاحيه دعوه المستخدمين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,'لا',nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, 0, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⌯ تم تفعيل صلاحيه دعوه المستخدمين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,'نعم',nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, 1, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum5//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum5//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).delete_messages) == 1 then
bot.answerCallbackQuery(data.id, "⌯ تم تعطيل صلاحيه مسح الرسائل", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,'لا',nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, 0, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⌯ تم تفعيل صلاحيه مسح الرسائل", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,'نعم',nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, 1, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum6//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum6//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).promote) == 1 then
bot.answerCallbackQuery(data.id, "⌯ تم تعطيل صلاحيه اضافه مشرفين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,nil,'لا')
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, 0})
else
bot.answerCallbackQuery(data.id, "⌯ تم تفعيل صلاحيه اضافه مشرفين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,nil,'نعم')
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, 1})
end
end
end
if Text and Text:match('(%d+)/web') then
local UserId = Text:match('(%d+)/web')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).web == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, false, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, true, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/info') then
local UserId = Text:match('(%d+)/info')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).info == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, false, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, true, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/invite') then
local UserId = Text:match('(%d+)/invite')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).invite == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, false, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, true, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/pin') then
local UserId = Text:match('(%d+)/pin')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).pin == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, false)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, true)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/media') then
local UserId = Text:match('(%d+)/media')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).media == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, false, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, true, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/messges') then
local UserId = Text:match('(%d+)/messges')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).messges == true then
bot.setChatPermissions(ChatId, false, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, true, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/other') then
local UserId = Text:match('(%d+)/other')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).other == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, false, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, true, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/polls') then
local UserId = Text:match('(%d+)/polls')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).polls == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, false, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, true, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
end
if Text and Text:match('(%d+)/listallAddorrem') then
local UserId = Text:match('(%d+)/listallAddorrem')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'تعطيل الرابط', data = IdUser..'/'.. 'unmute_link'},{text = 'تفعيل الرابط', data = IdUser..'/'.. 'mute_link'},
},
{
{text = 'تعطيل الترحيب', data = IdUser..'/'.. 'unmute_welcome'},{text = 'تفعيل الترحيب', data = IdUser..'/'.. 'mute_welcome'},
},
{
{text = 'تعطيل الايدي', data = IdUser..'/'.. 'unmute_Id'},{text = 'تفعيل الايدي', data = IdUser..'/'.. 'mute_Id'},
},
{
{text = 'تعطيل الايدي بالصوره', data = IdUser..'/'.. 'unmute_IdPhoto'},{text = 'تفعيل الايدي بالصوره', data = IdUser..'/'.. 'mute_IdPhoto'},
},
{
{text = 'تعطيل الردود', data = IdUser..'/'.. 'unmute_ryple'},{text = 'تفعيل الردود', data = IdUser..'/'.. 'mute_ryple'},
},
{
{text = 'تعطيل الردود العامه', data = IdUser..'/'.. 'unmute_ryplesudo'},{text = 'تفعيل الردود العامه', data = IdUser..'/'.. 'mute_ryplesudo'},
},
{
{text = 'تعطيل الرفع', data = IdUser..'/'.. 'unmute_setadmib'},{text = 'تفعيل الرفع', data = IdUser..'/'.. 'mute_setadmib'},
},
{
{text = 'تعطيل الطرد', data = IdUser..'/'.. 'unmute_kickmembars'},{text = 'تفعيل الطرد', data = IdUser..'/'.. 'mute_kickmembars'},
},
{
{text = 'تعطيل الالعاب', data = IdUser..'/'.. 'unmute_games'},{text = 'تفعيل الالعاب', data = IdUser..'/'.. 'mute_games'},
},
{
{text = 'تعطيل اطردني', data = IdUser..'/'.. 'unmute_kickme'},{text = 'تفعيل اطردني', data = IdUser..'/'.. 'mute_kickme'},
},
{
{text = 'تعطيل التسليه', data = IdUser..'/'.. 'unmute_thshesh'},{text = 'تفعيل التسليه', data = IdUser..'/'.. 'mute_thshesh'},
},
{
{text = 'تعطيل الحظر المحدود', data = IdUser..'/'.. 'unmute_kicknum'},{text = 'تفعيل الحظر المحدود', data = IdUser..'/'.. 'mute_kicknum'},
},
{
{text = 'تعطيل الصيغ', data = IdUser..'/'.. 'unmute_seck'},{text = 'تفعيل الصيغ', data = IdUser..'/'.. 'mute_seck'},
},
{
{text = 'تعطيل غنيلي', data = IdUser..'/'.. 'unmute_knile'},{text = 'تفعيل غنيلي', data = IdUser..'/'.. 'mute_knile'},
},
{
{text = 'تعطيل الابراح', data = IdUser..'/'.. 'unmute_brj'},{text = 'تفعيل الابراج', data = IdUser..'/'.. 'mute_brj'},
},
{
{text = 'تعطيل الصوتيات', data = IdUser..'/'.. 'unmute_audio'},{text = 'تفعيل الصوتيات', data = IdUser..'/'.. 'mute_audio'},
},
{
{text = 'تعطيل الصوتيات العامه', data = IdUser..'/'.. 'unmute_audioall'},{text = 'تفعيل الصوتيات العامه', data = IdUser..'/'.. 'mute_audioall'},
},
{
{text = 'تعطيل تاك عام', data = IdUser..'/'.. 'unmute_takall'},{text = 'تفعيل تاك عام', data = IdUser..'/'.. 'mute_takall'},
},
{
{text = 'تعطيل التنبيه', data = IdUser..'/'.. 'unmute_namemy'},{text = 'تفعيل التنبيه', data = IdUser..'/'.. 'mute_namemy'},
},
{
{text = 'القائمة الرئيسية', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data ='/delAmr'}
},
}
}
return edit(ChatId,Msg_id,'⇜ اوامر التفعيل والتعطيل ', 'md', false, false, reply_markup)
end
end
if Text and Text:match('(%d+)/NextSeting') then
local UserId = Text:match('(%d+)/NextSeting')
if tonumber(IdUser) == tonumber(UserId) then
local Text = "\n⇜ اعدادات القروب ".."\n⇜ نعم تعني - مقفل".."\n⇜ لا تعني - مفتوح\n✧"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = GetSetieng(ChatId).lock_fwd, data =IdUser..'/'.. 'Status_fwd'},{text = 'التوجبه : ', data =IdUser..'/'.. 'Status_fwd'},
{text = GetSetieng(ChatId).lock_muse, data =IdUser..'/'.. 'Status_audio'},{text = 'الصوت : ', data =IdUser..'/'.. 'Status_audio'},
},
{
{text = GetSetieng(ChatId).lock_ste, data =IdUser..'/'.. 'Status_stikear'},{text = 'الملصقات : ', data =IdUser..'/'.. 'Status_stikear'},
{text = GetSetieng(ChatId).lock_phon, data =IdUser..'/'.. 'Status_phone'},{text = 'الجهات : ', data =IdUser..'/'.. 'Status_phone'},
},
{
{text = GetSetieng(ChatId).lock_join, data =IdUser..'/'.. 'Status_joine'},{text = 'الدخول : ', data =IdUser..'/'.. 'Status_joine'},
{text = GetSetieng(ChatId).lock_add, data =IdUser..'/'.. 'Status_addmem'},{text = 'الاضافه : ', data =IdUser..'/'.. 'Status_addmem'},
},
{
{text = GetSetieng(ChatId).lock_self, data =IdUser..'/'.. 'Status_videonote'},{text = 'بصمه فيديو : ', data =IdUser..'/'.. 'Status_videonote'},
{text = GetSetieng(ChatId).lock_pin, data =IdUser..'/'.. 'Status_pin'},{text = 'التثبيت : ', data =IdUser..'/'.. 'Status_pin'},
},
{
{text = GetSetieng(ChatId).lock_tagservr, data =IdUser..'/'.. 'Status_tgservir'},{text = 'الاشعارات : ', data =IdUser..'/'.. 'Status_tgservir'},
{text = GetSetieng(ChatId).lock_mark, data =IdUser..'/'.. 'Status_markdaun'},{text = 'الماركدون : ', data =IdUser..'/'.. 'Status_markdaun'},
},
{
{text = GetSetieng(ChatId).lock_edit, data =IdUser..'/'.. 'Status_edits'},{text = 'التعديل : ', data =IdUser..'/'.. 'Status_edits'},
{text = GetSetieng(ChatId).lock_geam, data =IdUser..'/'.. 'Status_games'},{text = 'الالعاب : ', data =IdUser..'/'.. 'Status_games'},
},
{
{text = GetSetieng(ChatId).flood, data =IdUser..'/'.. 'Status_flood'},{text = 'التكرار : ', data =IdUser..'/'.. 'Status_flood'},
},
{
{text = '- الرجوع .. ', data =IdUser..'/'.. 'NoNextSeting'}
},
{
{text = 'القائمة الرئيسية', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data ='/delAmr'}
},
}
}
edit(ChatId,Msg_id,Text, 'md', false, false, reply_markup)
end
end
if Text and Text:match('(%d+)/NoNextSeting') then
local UserId = Text:match('(%d+)/NoNextSeting')
if tonumber(IdUser) == tonumber(UserId) then
local Text = "\n⇜ اعدادات القروب ".."\n⇜ نعم تعني - مقفل".."\n⇜ لا تعني - مفتوح\n✧"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = GetSetieng(ChatId).lock_links, data =IdUser..'/'.. 'Status_link'},{text = 'الروابط : ', data =IdUser..'/'.. 'Status_link'},
{text = GetSetieng(ChatId).lock_spam, data =IdUser..'/'.. 'Status_spam'},{text = 'الكلايش : ', data =IdUser..'/'.. 'Status_spam'},
},
{
{text = GetSetieng(ChatId).lock_inlin, data =IdUser..'/'.. 'Status_keypord'},{text = 'الكيبورد : ', data =IdUser..'/'.. 'Status_keypord'},
{text = GetSetieng(ChatId).lock_vico, data =IdUser..'/'.. 'Status_voice'},{text = 'الاغاني : ', data =IdUser..'/'.. 'Status_voice'},
},
{
{text = GetSetieng(ChatId).lock_gif, data =IdUser..'/'.. 'Status_gif'},{text = 'المتحركه : ', data =IdUser..'/'.. 'Status_gif'},
{text = GetSetieng(ChatId).lock_file, data =IdUser..'/'.. 'Status_files'},{text = 'الملفات : ', data =IdUser..'/'.. 'Status_files'},
},
{
{text = GetSetieng(ChatId).lock_text, data =IdUser..'/'.. 'Status_text'},{text = 'الشات : ', data =IdUser..'/'.. 'Status_text'},
{text = GetSetieng(ChatId).lock_ved, data =IdUser..'/'.. 'Status_video'},{text = 'الفيديو : ', data =IdUser..'/'.. 'Status_video'},
},
{
{text = GetSetieng(ChatId).lock_photo, data =IdUser..'/'.. 'Status_photo'},{text = 'الصور : ', data =IdUser..'/'.. 'Status_photo'},
{text = GetSetieng(ChatId).lock_user, data =IdUser..'/'.. 'Status_username'},{text = 'المعرفات : ', data =IdUser..'/'.. 'Status_username'},
},
{
{text = GetSetieng(ChatId).lock_hash, data =IdUser..'/'.. 'Status_tags'},{text = 'التاك : ', data =IdUser..'/'.. 'Status_tags'},
{text = GetSetieng(ChatId).lock_bots, data =IdUser..'/'.. 'Status_bots'},{text = 'البوتات : ', data =IdUser..'/'.. 'Status_bots'},
},
{
{text = GetSetieng(ChatId).farsia, data =IdUser..'/'.. 'Status_farsia'},{text = 'الفارسيه : ', data =IdUser..'/'.. 'Status_farsia'},
{text = GetSetieng(ChatId).tphlesh, data =IdUser..'/'.. 'Status_tphlesh'},{text = 'الحمايه : ', data =IdUser..'/'.. 'Status_tphlesh'},
},
{
{text = GetSetieng(ChatId).alphsar, data =IdUser..'/'.. 'Status_alphsar'},{text = 'السب : ', data =IdUser..'/'.. 'Status_alphsar'},
},
{
{text = '- التالي .. ', data =IdUser..'/'.. 'NextSeting'}
},
{
{text = 'القائمة الرئيسية', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data ='/delAmr'}
},
}
}
edit(ChatId,Msg_id,Text, 'md', false, false, reply_markup)
end
end  
if Text and Text:match('/delAmr') then
local UserId = Text:match('/delAmr')
if data.Managers then
return bot.deleteMessages(ChatId,{[1]= Msg_id})
end
end

if Text and Text:match('/gamesmtor') then
local UserId = Text:match('/gamesmtor')
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text="♟ شطرنج ♟",url='https://t.me/T4TTTTBOT?game=chess'}},
{{text="لعبة فلابي بيرد 🐥",url='https://t.me/awesomebot?game=FlappyBird'},{text="تحداني فالرياضيات 🔢",url='https://t.me/gamebot?game=MathBattle'}},
{{text="تحداني في ❌⭕️",url='t.me/XO_AABOT?start3836619'},{text="سباق الدراجات 🏍",url='https://t.me/gamee?game=MotoFX'}},
{{text="سباق سيارات 🏎",url='https://t.me/gamee?game=F1Racer'},{text="متشابه 👾",url='https://t.me/gamee?game=DiamondRows'}},
{{text="كرة قدم ⚽",url='https://t.me/gamee?game=FootballStar'}},
{{text="دومنا🥇",url='https://vipgames.com/play/?affiliateId=wpDom/#/games/domino/lobby'},{text="❕ليدو",url='https://vipgames.com/play/?affiliateId=wpVG#/games/ludo/lobby'}},
{{text="ورق🤹‍♂",url='https://t.me/gamee?game=Hexonix'},{text="Hexonix❌",url='https://t.me/gamee?game=Hexonix'}},
{{text="MotoFx🏍️",url='https://t.me/gamee?game=MotoFx'}},
{{text="لعبة 2048 🎰",url='https://t.me/awesomebot?game=g2048'},{text="Squares🏁",url='https://t.me/gamee?game=Squares'}},
{{text="Atomic 1▶️",url='https://t.me/gamee?game=AtomicDrop1'},{text="Corsairs",url='https://t.me/gamebot?game=Corsairs'}},
{{text="LumberJack",url='https://t.me/gamebot?game=LumberJack'}},
{{text="LittlePlane",url='https://t.me/gamee?game=LittlePlane'},{text="RollerDisco",url='https://t.me/gamee?game=RollerDisco'}},
{{text="🦖 Dragon Game 🦖",url='https://t.me/T4TTTTBOT?game=dragon'},{text="🐍 3D Snake Game 🐍",url='https://t.me/T4TTTTBOT?game=snake'}},
{{text="🔵 Color Game 🔴",url='https://t.me/T4TTTTBOT?game=color'}},
{{text="🚀 Rocket Game 🚀",url='https://t.me/T4TTTTBOT?game=rocket'},{text="🏹 Arrow Game 🏹",url='https://t.me/T4TTTTBOT?game=arrow'}},
{{text = 'رجوع', data = IdUser..'/help6'},},
}
}
edit(ChatId,Msg_id,'⇜ قائمة الالعاب المتطورة ',"md", true, false, reply_markup)
end

if Text and Text:match('(%d+)/Status_link') then
local UserId = Text:match('(%d+)/Status_link')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الروابط', data =UserId..'/'.. 'lock_link'},{text = 'قفل الروابط بالكتم', data =UserId..'/'.. 'lock_linkktm'},
},
{
{text = 'قفل الروابط بالطرد', data =UserId..'/'.. 'lock_linkkick'},{text = 'قفل الروابط بالتقييد', data =UserId..'/'.. 'lock_linkkid'},
},
{
{text = 'فتح الروابط', data =UserId..'/'.. 'unlock_link'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_farsia') then
local UserId = Text:match('(%d+)/Status_farsia')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الفارسيه', data =UserId..'/'.. 'lock_Status_farsia'},
},
{
{text = 'فتح الفارسيه', data =UserId..'/'.. 'unlock_Status_farsia'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tphlesh') then
local UserId = Text:match('(%d+)/Status_tphlesh')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الحمايه', data =UserId..'/'.. 'lock_Status_tphlesh'},
},
{
{text = 'فتح الحمايه', data =UserId..'/'.. 'unlock_Status_tphlesh'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_alphsar') then
local UserId = Text:match('(%d+)/Status_alphsar')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل السب', data =UserId..'/'.. 'lock_Status_alphsar'},
},
{
{text = 'فتح السب', data =UserId..'/'.. 'unlock_Status_alphsar'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_spam') then
local UserId = Text:match('(%d+)/Status_spam')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الكلايش', data =UserId..'/'.. 'lock_spam'},{text = 'قفل الكلايش بالكتم', data =UserId..'/'.. 'lock_spamktm'},
},
{
{text = 'قفل الكلايش بالطرد', data =UserId..'/'.. 'lock_spamkick'},{text = 'قفل الكلايش بالتقييد', data =UserId..'/'.. 'lock_spamid'},
},
{
{text = 'فتح الكلايش', data =UserId..'/'.. 'unlock_spam'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_keypord') then
local UserId = Text:match('(%d+)/Status_keypord')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الكيبورد', data =UserId..'/'.. 'lock_keypord'},{text = 'قفل الكيبورد بالكتم', data =UserId..'/'.. 'lock_keypordktm'},
},
{
{text = 'قفل الكيبورد بالطرد', data =UserId..'/'.. 'lock_keypordkick'},{text = 'قفل الكيبورد بالتقييد', data =UserId..'/'.. 'lock_keypordkid'},
},
{
{text = 'فتح الكيبورد', data =UserId..'/'.. 'unlock_keypord'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_voice') then
local UserId = Text:match('(%d+)/Status_voice')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاغاني', data =UserId..'/'.. 'lock_voice'},{text = 'قفل الاغاني بالكتم', data =UserId..'/'.. 'lock_voicektm'},
},
{
{text = 'قفل الاغاني بالطرد', data =UserId..'/'.. 'lock_voicekick'},{text = 'قفل الاغاني بالتقييد', data =UserId..'/'.. 'lock_voicekid'},
},
{
{text = 'فتح الاغاني', data =UserId..'/'.. 'unlock_voice'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_gif') then
local UserId = Text:match('(%d+)/Status_gif')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل المتحركه', data =UserId..'/'.. 'lock_gif'},{text = 'قفل المتحركه بالكتم', data =UserId..'/'.. 'lock_gifktm'},
},
{
{text = 'قفل المتحركه بالطرد', data =UserId..'/'.. 'lock_gifkick'},{text = 'قفل المتحركه بالتقييد', data =UserId..'/'.. 'lock_gifkid'},
},
{
{text = 'فتح المتحركه', data =UserId..'/'.. 'unlock_gif'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_files') then
local UserId = Text:match('(%d+)/Status_files')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الملفات', data =UserId..'/'.. 'lock_files'},{text = 'قفل الملفات بالكتم', data =UserId..'/'.. 'lock_filesktm'},
},
{
{text = 'قفل الملفات بالطرد', data =UserId..'/'.. 'lock_fileskick'},{text = 'قفل الملفات بالتقييد', data =UserId..'/'.. 'lock_fileskid'},
},
{
{text = 'فتح الملفات', data =UserId..'/'.. 'unlock_files'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_text') then
local UserId = Text:match('(%d+)/Status_text')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الشات', data =UserId..'/'.. 'lock_text'},
},
{
{text = 'فتح الشات', data =UserId..'/'.. 'unlock_text'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_video') then
local UserId = Text:match('(%d+)/Status_video')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الفيديو', data =UserId..'/'.. 'lock_video'},{text = 'قفل الفيديو بالكتم', data =UserId..'/'.. 'lock_videoktm'},
},
{
{text = 'قفل الفيديو بالطرد', data =UserId..'/'.. 'lock_videokick'},{text = 'قفل الفيديو بالتقييد', data =UserId..'/'.. 'lock_videokid'},
},
{
{text = 'فتح الفيديو', data =UserId..'/'.. 'unlock_video'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_photo') then
local UserId = Text:match('(%d+)/Status_photo')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الصور', data =UserId..'/'.. 'lock_photo'},{text = 'قفل الصور بالكتم', data =UserId..'/'.. 'lock_photoktm'},
},
{
{text = 'قفل الصور بالطرد', data =UserId..'/'.. 'lock_photokick'},{text = 'قفل الصور بالتقييد', data =UserId..'/'.. 'lock_photokid'},
},
{
{text = 'فتح الصور', data =UserId..'/'.. 'unlock_photo'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_username') then
local UserId = Text:match('(%d+)/Status_username')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل المعرفات', data =UserId..'/'.. 'lock_username'},{text = 'قفل المعرفات بالكتم', data =UserId..'/'.. 'lock_usernamektm'},
},
{
{text = 'قفل المعرفات بالطرد', data =UserId..'/'.. 'lock_usernamekick'},{text = 'قفل المعرفات بالتقييد', data =UserId..'/'.. 'lock_usernamekid'},
},
{
{text = 'فتح المعرفات', data =UserId..'/'.. 'unlock_username'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tags') then
local UserId = Text:match('(%d+)/Status_tags')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التاك', data =UserId..'/'.. 'lock_tags'},{text = 'قفل التاك بالكتم', data =UserId..'/'.. 'lock_tagsktm'},
},
{
{text = 'قفل التاك بالطرد', data =UserId..'/'.. 'lock_tagskick'},{text = 'قفل التاك بالتقييد', data =UserId..'/'.. 'lock_tagskid'},
},
{
{text = 'فتح التاك', data =UserId..'/'.. 'unlock_tags'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_bots') then
local UserId = Text:match('(%d+)/Status_bots')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل البوتات', data =UserId..'/'.. 'lock_bots'},{text = 'قفل البوتات بالطرد', data =UserId..'/'.. 'lock_botskick'},
},
{
{text = 'فتح البوتات', data =UserId..'/'.. 'unlock_bots'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_fwd') then
local UserId = Text:match('(%d+)/Status_fwd')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التوجيه', data =UserId..'/'.. 'lock_fwd'},{text = 'قفل التوجيه بالكتم', data =UserId..'/'.. 'lock_fwdktm'},
},
{
{text = 'قفل التوجيه بالطرد', data =UserId..'/'.. 'lock_fwdkick'},{text = 'قفل التوجيه بالتقييد', data =UserId..'/'.. 'lock_fwdkid'},
},
{
{text = 'فتح التوجيه', data =UserId..'/'.. 'unlock_link'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_audio') then
local UserId = Text:match('(%d+)/Status_audio')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الصوت', data =UserId..'/'.. 'lock_audio'},{text = 'قفل الصوت بالكتم', data =UserId..'/'.. 'lock_audioktm'},
},
{
{text = 'قفل الصوت بالطرد', data =UserId..'/'.. 'lock_audiokick'},{text = 'قفل الصوت بالتقييد', data =UserId..'/'.. 'lock_audiokid'},
},
{
{text = 'فتح الصوت', data =UserId..'/'.. 'unlock_audio'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_stikear') then
local UserId = Text:match('(%d+)/Status_stikear')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الملصقات', data =UserId..'/'.. 'lock_stikear'},{text = 'قفل الملصقات بالكتم', data =UserId..'/'.. 'lock_stikearktm'},
},
{
{text = 'قفل الملصقات بالطرد', data =UserId..'/'.. 'lock_stikearkick'},{text = 'قفل الملصقات بالتقييد', data =UserId..'/'.. 'lock_stikearkid'},
},
{
{text = 'فتح الملصقات', data =UserId..'/'.. 'unlock_stikear'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_phone') then
local UserId = Text:match('(%d+)/Status_phone')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الجهات', data =UserId..'/'.. 'lock_phone'},{text = 'قفل الجهات بالكتم', data =UserId..'/'.. 'lock_phonektm'},
},
{
{text = 'قفل الجهات بالطرد', data =UserId..'/'.. 'lock_phonekick'},{text = 'قفل الجهات بالتقييد', data =UserId..'/'.. 'lock_phonekid'},
},
{
{text = 'فتح الجهات', data =UserId..'/'.. 'unlock_phone'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_joine') then
local UserId = Text:match('(%d+)/Status_joine')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الدخول', data =UserId..'/'.. 'lock_joine'},
},
{
{text = 'فتح الدخول', data =UserId..'/'.. 'unlock_joine'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_addmem') then
local UserId = Text:match('(%d+)/Status_addmem')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاضافه', data =UserId..'/'.. 'lock_addmem'},
},
{
{text = 'فتح الاضافه', data =UserId..'/'.. 'unlock_addmem'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_videonote') then
local UserId = Text:match('(%d+)/Status_videonote')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل السيلفي', data =UserId..'/'.. 'lock_videonote'},{text = 'قفل السيلفي بالكتم', data =UserId..'/'.. 'lock_videonotektm'},
},
{
{text = 'قفل السيلفي بالطرد', data =UserId..'/'.. 'lock_videonotekick'},{text = 'قفل السيلفي بالتقييد', data =UserId..'/'.. 'lock_videonotekid'},
},
{
{text = 'فتح السيلفي', data =UserId..'/'.. 'unlock_videonote'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_pin') then
local UserId = Text:match('(%d+)/Status_pin')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التثبيت', data =UserId..'/'.. 'lock_pin'},
},
{
{text = 'فتح التثبيت', data =UserId..'/'.. 'unlock_pin'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tgservir') then
local UserId = Text:match('(%d+)/Status_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاشعارات', data =UserId..'/'.. 'lock_tgservir'},
},
{
{text = 'فتح الاشعارات', data =UserId..'/'.. 'unlock_tgservir'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_markdaun') then
local UserId = Text:match('(%d+)/Status_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الماركداون', data =UserId..'/'.. 'lock_markdaun'},{text = 'قفل الماركداون بالكتم', data =UserId..'/'.. 'lock_markdaunktm'},
},
{
{text = 'قفل الماركداون بالطرد', data =UserId..'/'.. 'lock_markdaunkick'},{text = 'قفل الماركداون بالتقييد', data =UserId..'/'.. 'lock_markdaunkid'},
},
{
{text = 'فتح الماركداون', data =UserId..'/'.. 'unlock_markdaun'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_edits') then
local UserId = Text:match('(%d+)/Status_edits')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التعديل', data =UserId..'/'.. 'lock_edits'},
},
{
{text = 'فتح التعديل', data =UserId..'/'.. 'unlock_edits'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_games') then
local UserId = Text:match('(%d+)/Status_games')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الالعاب', data =UserId..'/'.. 'lock_games'},{text = 'قفل الالعاب بالكتم', data =UserId..'/'.. 'lock_gamesktm'},
},
{
{text = 'قفل الالعاب بالطرد', data =UserId..'/'.. 'lock_gameskick'},{text = 'قفل الالعاب بالتقييد', data =UserId..'/'.. 'lock_gameskid'},
},
{
{text = 'فتح الالعاب', data =UserId..'/'.. 'unlock_games'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_flood') then
local UserId = Text:match('(%d+)/Status_flood')
if tonumber(IdUser) == tonumber(UserId) then

local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التكرار', data =UserId..'/'.. 'lock_flood'},{text = 'قفل التكرار بالكتم', data =UserId..'/'.. 'lock_floodktm'},
},
{
{text = 'قفل التكرار بالطرد', data =UserId..'/'.. 'lock_floodkick'},{text = 'قفل التكرار بالتقييد', data =UserId..'/'.. 'lock_floodkid'},
},
{
{text = 'فتح التكرار', data =UserId..'/'.. 'unlock_flood'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_link') then
local UserId = Text:match('(%d+)/unlock_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Link"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الروابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_Status_farsia') then
local UserId = Text:match('(%d+)/unlock_Status_farsia')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:farsia"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الفارسيه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_Status_tphlesh') then
local UserId = Text:match('(%d+)/unlock_Status_tphlesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:tphlesh"..ChatId)  
Redis:del(TheMero.."Mero:Status:IdPhoto"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الحمايه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_Status_alphsar') then
local UserId = Text:match('(%d+)/unlock_Status_alphsar')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:phshar"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح السب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_Status_farsia') then
local UserId = Text:match('(%d+)/lock_Status_farsia')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:farsia"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفارسيه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_Status_tphlesh') and data.Managers then
local UserId = Text:match('(%d+)/lock_Status_tphlesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:tphlesh"..ChatId,true)
Redis:set(TheMero.."Mero:Status:IdPhoto"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الحمايه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_Status_alphsar') then
local UserId = Text:match('(%d+)/lock_Status_alphsar')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(TheMero.."Mero:Lock:phshar"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل السب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_spam') then
local UserId = Text:match('(%d+)/unlock_spam')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Spam"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الكلايش").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_keypord') then
local UserId = Text:match('(%d+)/unlock_keypord')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Keyboard"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الكيبورد").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_voice') then
local UserId = Text:match('(%d+)/unlock_voice')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:vico"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الاغاني").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_gif') then
local UserId = Text:match('(%d+)/unlock_gif')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Animation"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح المتحركات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_files') then
local UserId = Text:match('(%d+)/unlock_files')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Document"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الملفات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_text') then
local UserId = Text:match('(%d+)/unlock_text')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:text"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الشات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_video') then
local UserId = Text:match('(%d+)/unlock_video')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Video"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الفيديو").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_photo') then
local UserId = Text:match('(%d+)/unlock_photo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Photo"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الصور").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_username') then
local UserId = Text:match('(%d+)/unlock_username')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:User:Name"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح المعرفات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_tags') then
local UserId = Text:match('(%d+)/unlock_tags')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:hashtak"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التاك").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_bots') then
local UserId = Text:match('(%d+)/unlock_bots')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Bot:kick"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح البوتات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_fwd') then
local UserId = Text:match('(%d+)/unlock_fwd')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:forward"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التوجيه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_audio') then
local UserId = Text:match('(%d+)/unlock_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Audio"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الصوت").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_stikear') then
local UserId = Text:match('(%d+)/unlock_stikear')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Sticker"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الملصقات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_phone') then
local UserId = Text:match('(%d+)/unlock_phone')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Contact"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الجهات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_joine') then
local UserId = Text:match('(%d+)/unlock_joine')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Join"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الدخول").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_addmem') then
local UserId = Text:match('(%d+)/unlock_addmem')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:AddMempar"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الاضافه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_videonote') then
local UserId = Text:match('(%d+)/unlock_videonote')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Unsupported"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح بصمه الفيديو").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_pin') then
local UserId = Text:match('(%d+)/unlock_pin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:lockpin"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التثبيت").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_tgservir') then
local UserId = Text:match('(%d+)/unlock_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:tagservr"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الاشعارات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_markdaun') then
local UserId = Text:match('(%d+)/unlock_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:Markdaun"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الماركدون").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_edits') then
local UserId = Text:match('(%d+)/unlock_edits')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:edit"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التعديل").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_games') then
local UserId = Text:match('(%d+)/unlock_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Lock:geam"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_flood') then
local UserId = Text:match('(%d+)/unlock_flood')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hdel(TheMero.."Mero:Spam:Group:User"..ChatId ,"Spam:User")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التكرار").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/backbio') then
local UserId = Text:match('(%d+)/backbio')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شباب', data = IdUser..'/bioold'},{text = 'بنات', data = IdUser..'/biobnt'},
},
}
}
return edit(ChatId,Msg_id,"اختر نوع البايو", 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/bioold') then
local UserId = Text:match('(%d+)/bioold')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'بايو آخر', data = UserId..'/bioold'},
},
{
{text = 'رجوع', data = UserId..'/backbio'},
},
}
}
local list = {
"ابتليت بحُب ابتسامَته وعيُونه.",
"انتَ فكره رائعه وضعها الربُ في عقلي.",
"اتأمل صورتك وتطيب الدنيا في عيني.",
"ماذا لو اخَترتكَ موِسيقتي.",
"مبسّمك يأخذ من الليّل نُوره.",
"يا ضمادَ جُروحِي و أطيّب أشخاصي.",
"كلما أتبعُ قلبي يدُلني إليك.",
"كُل شيء بجوارك جميل جدًا.‍",
"صُباح الخير يامُلهميِ وشخصيِ الأول.",
"ليتنَي آكثر الناظرينَ اليكِ.",
"حتى الخيال فيّك جبر خاطَر.",
"عنْ ألف نِعمة أنا وقلبي مكتفّين فيك . .",
"﮼سأحاول ، أقـنـاع نَـفسـي بـآن ڪُل شـيء ڪان مُـجرد حلم🥀!",
"حاولت أن لا انظر اليك ، لڪن عيناي تمردت 🖤👁️",
"لا تهمل وردتكَ ، حتى لا يُسقيها غيرك🔥🖤",
"أخبࢪتـك ذات ليلـه أنك ستمـل وتتغيـࢪ ، فأنڪࢪت، 🖤",
"اللهُم إجعل لي نصيب في كل شيء أحببته.",
"ربي .. إني اعوذ بك من طول التمني ، و حرمان الوصول ♥️",
"رسالة واحدة منهُ تعادل سحابة سعادة  🎻🖤",
"العالم الذي نسير إليه، مُختلف تمامًا عن العالم الذي يجول بداخلنا .🤍✨",
"تكاد تنزلق من أطراف قلبي، ولأول مرة أشعر بأني سئمت من الاحتفاظ بك",
"أُعَمّم رَسائلي، وأعنيك أنتَ.",
"لا أجيد إكمال نصف الأشياء، إمَّا أن تأتيني بأكملها، أو لتذهب بجميعها.",
"لم تحملي على كتفك إلا شعرك من أين أتى هذا العِبء؟",
"كأن الحياة تأتي من جِهتك🖤.",
"فمن وثق بالله أغناه ومن توكل عليه كفاه.",
"في فمه حديث متكسر ، يجرح اطراف صوته .",
"ظننتها عابرة ، لكنها ظلت في داخلي الى الأبد ."
}
local bioold = list[math.random(#list)]
return edit(ChatId,Msg_id,"["..bioold.."]", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/biobnt') then
local UserId = Text:match('(%d+)/biobnt')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'بايو آخر', data = UserId..'/biobnt'},
},
{
{text = 'رجوع', data = UserId..'/backbio'},
},
}
}
local list = {
"ابتليت بحُب ابتسامَته وعيُونه.",
"انتَ فكره رائعه وضعها الربُ في عقلي.",
"اتأمل صورتك وتطيب الدنيا في عيني.",
"ماذا لو اخَترتكَ موِسيقتي.",
"مبسّمك يأخذ من الليّل نُوره.",
"يا ضمادَ جُروحِي و أطيّب أشخاصي.",
"كلما أتبعُ قلبي يدُلني إليك.",
"كُل شيء بجوارك جميل جدًا.‍",
"صُباح الخير يامُلهميِ وشخصيِ الأول.",
"ليتنَي آكثر الناظرينَ اليكِ.",
"حتى الخيال فيّك جبر خاطَر.",
"عنْ ألف نِعمة أنا وقلبي مكتفّين فيك . .",
"﮼سأحاول ، أقـنـاع نَـفسـي بـآن ڪُل شـيء ڪان مُـجرد حلم🥀!",
"حاولت أن لا انظر اليك ، لڪن عيناي تمردت 🖤👁️",
"لا تهمل وردتكَ ، حتى لا يُسقيها غيرك🔥🖤",
"أخبࢪتـك ذات ليلـه أنك ستمـل وتتغيـࢪ ، فأنڪࢪت، 🖤",
"اللهُم إجعل لي نصيب في كل شيء أحببته.",
"ربي .. إني اعوذ بك من طول التمني ، و حرمان الوصول ♥️",
"رسالة واحدة منهُ تعادل سحابة سعادة  🎻🖤",
"العالم الذي نسير إليه، مُختلف تمامًا عن العالم الذي يجول بداخلنا .🤍✨",
"تكاد تنزلق من أطراف قلبي، ولأول مرة أشعر بأني سئمت من الاحتفاظ بك",
"أُعَمّم رَسائلي، وأعنيك أنتَ.",
"لا أجيد إكمال نصف الأشياء، إمَّا أن تأتيني بأكملها، أو لتذهب بجميعها.",
"لم تحملي على كتفك إلا شعرك من أين أتى هذا العِبء؟",
"كأن الحياة تأتي من جِهتك🖤.",
"فمن وثق بالله أغناه ومن توكل عليه كفاه.",
"في فمه حديث متكسر ، يجرح اطراف صوته .",
"ظننتها عابرة ، لكنها ظلت في داخلي الى الأبد ."
}
local biobnt = list[math.random(#list)]
return edit(ChatId,Msg_id,"["..biobnt.."]", 'md', true, false, reply_markup)
end
end
if Text and Text:match('^(%d+)/back_lists$') then
local UserId = Text:match('^(%d+)/back_lists$')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="قائمه Dev",data=UserId..'/Redis:Devall'},
},
{
{text="المكتومين عام",data=UserId..'/KtmAll'},{text="المحظورين عام",data=UserId..'/BanAll'},
},
{
{text="قائمه MY",data=UserId..'/DevelopersQ'},{text="قائمه M",data=UserId..'/Developers'},
},
{
{text="المالكين",data=UserId..'/TheBasicsQ'},{text="المنشئين الاساسيين",data=UserId..'/TheBasics'},
},
{
{text="المنشئين",data=UserId..'/Originators'},{text="المدراء",data=UserId..'/Managers'},
},
{
{text="الادمنيه",data=UserId..'/Addictive'},{text="المميزين",data=UserId..'/DelDistinguished'},
},
{
{text="المكتومين",data=UserId..'/SilentGroupGroup'},{text="المحظورين",data=UserId..'/BanGroup'},
},
{
{text = "- اخفاء الامر ", data =UserId.."/delAmr"}
},
}
}
return edit(ChatId,Msg_id,"⇜ اختر احدى القوائم لمسحها", "md",true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/DevelopersQ') and data.ControllerBot then
local UserId = Text:match('(%d+)/DevelopersQ')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:DevelopersQ:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح قائمه Myth🎖️", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Developers') and data.DevelopersQ then
local UserId = Text:match('(%d+)/Developers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Developers:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح Myth", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Redis:Devall') and data.ControllerBot then
local UserId = Text:match('(%d+)/Redis:Devall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:ControlAll:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح قائمه Dev²🎖", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/TheBasicsQ') and data.Developers then
local UserId = Text:match('(%d+)/TheBasicsQ')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:TheBasicsQ:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المالكين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/MalekAsase') and data.Developers then
local UserId = Text:match('(%d+)/MalekAsase')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:MalekAsase:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المالكين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/TheBasics') and data.TheBasicsQ then
local UserId = Text:match('(%d+)/TheBasics')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:TheBasics:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المنشئين الاساسيين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Originators') and data.TheBasics then
local UserId = Text:match('(%d+)/Originators')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Originators:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المنشئين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Managers') and data.Originators then
local UserId = Text:match('(%d+)/Managers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Managers:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المدراء", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Addictive') and data.Managers then
local UserId = Text:match('(%d+)/Addictive')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Addictive:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح الادمنيه", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/DelDistinguished') then
local UserId = Text:match('(%d+)/DelDistinguished')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:Distinguished:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المميزين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/KtmAll') and data.ControllerBot then
local UserId = Text:match('(%d+)/KtmAll')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:KtmAll:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المكتومين عام", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/BanAll') and data.ControllerBot then
local UserId = Text:match('(%d+)/BanAll')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:BanAll:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المحظورين عام", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/BanGroup') and data.Addictive then
local UserId = Text:match('(%d+)/BanGroup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:BanGroup:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المحظورين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/SilentGroupGroup') and data.Addictive then
local UserId = Text:match('(%d+)/SilentGroupGroup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(TheMero.."Mero:SilentGroup:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المكتومين", "md",true, false, reply_markup)
end
end
end
end