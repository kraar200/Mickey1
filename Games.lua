function RunGames(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
msg_reply_id = msg.reply_to_message_id
msg_user_send_id = msg.sender_id.user_id
Bot_Name = (Redis:get(TheMero.."Mero:Name:Bot") or "لويس")
if text and text:match('^'..Bot_Name..' ') then
text = text:gsub('^'..Bot_Name..' ','')
end
if text then
local NewCmmd = Redis:get(TheMero.."All:Get:Reides:Commands:Group"..text) or Redis:get(TheMero.."Mero:Get:Reides:Commands:Group"..msg_chat_id..":"..text)
if NewCmmd then
text = (NewCmmd or text)
end
end
if Redis:get(TheMero.."Mero:Game:Smile"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Smile"..msg.chat_id) then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(TheMero.."Mero:Game:Smile"..msg.chat_id)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true)  
end
end 
if Redis:get(TheMero.."Mero:Game:Monotonous"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Monotonous"..msg.chat_id) then
Redis:del(TheMero.."Mero:Game:Monotonous"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end 
if Redis:get(TheMero.."Mero:Game:alam"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:alam"..msg.chat_id) then
Redis:del(TheMero.."Mero:Game:alam"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end 
if Redis:get(TheMero.."Mero:Game:ausm"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:ausm"..msg.chat_id) then
Redis:del(TheMero.."Mero:Game:ausm"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end 
if Redis:get(TheMero.."Mero:Game:Riddles"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Riddles"..msg.chat_id) then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(TheMero.."Mero:Game:Riddles"..msg.chat_id)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
if Redis:get(TheMero.."Mero:Game:Meaningof"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Meaningof"..msg.chat_id) then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(TheMero.."Mero:Game:Meaningof"..msg.chat_id)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
if Redis:get(TheMero.."Mero:Game:Reflection"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Reflection"..msg.chat_id) then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(TheMero.."Mero:Game:Reflection"..msg.chat_id)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
if Redis:get(TheMero.."Mero:Game:Estimate"..msg.chat_id..msg.sender_id.user_id) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
return send(msg_chat_id,msg_id,"⇜ مايمديك تخمن عدد اكبر من ( 20 ) خمن رقم ما بين ( 1 - 20 )\n","md",true)
end 
local GETNUM = Redis:get(TheMero.."Mero:Game:Estimate"..msg.chat_id..msg.sender_id.user_id)
if tonumber(NUM) == tonumber(GETNUM) then
Redis:del(TheMero.."Mero:SADD:NUM"..msg.chat_id..msg.sender_id.user_id)
Redis:del(TheMero.."Mero:Game:Estimate"..msg.chat_id..msg.sender_id.user_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,5)  
return send(msg_chat_id,msg_id,"⇜ مبروك فزت وخمنت الرقم الصحيح\n⇜ تم اضافة لك ( 5 ) نقاط \n✧","md",true)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
Redis:incrby(TheMero.."Mero:SADD:NUM"..msg.chat_id..msg.sender_id.user_id,1)
if tonumber(Redis:get(TheMero.."Mero:SADD:NUM"..msg.chat_id..msg.sender_id.user_id)) >= 3 then
Redis:del(TheMero.."Mero:SADD:NUM"..msg.chat_id..msg.sender_id.user_id)
Redis:del(TheMero.."Mero:Game:Estimate"..msg.chat_id..msg.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ لقد خسرت في اللعبة \n⇜ كان الرقم الذي تم تخمينه ( "..GETNUM.." )\n✧","md",true)  
else
return send(msg_chat_id,msg_id,"⇜ تخمينك خطأ \n⇜ ارسل رقم تخمنه مرة اخرى\n✧ ","md",true)  
end
end
end
end
if Redis:get(TheMero.."Mero:Game:Difference"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Difference"..msg.chat_id) then 
Redis:del(TheMero.."Mero:Game:Difference"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
if Redis:get(TheMero.."Mero:Game:Example"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Example"..msg.chat_id) then 
Redis:del(TheMero.."Mero:Game:Example"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
-------*****************-------*****************-------*****************
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:Set:Manager:rd"..msg.sender_id.user_id..":"..msg.chat_id) == "true" then
Redis:set(TheMero.."gamebot:Set:Manager:rd"..msg.sender_id.user_id..":"..msg.chat_id,"true1uu")
Redis:sadd(TheMero.."gamebot:List:Manager", text)
return send(msg.chat_id,msg.id,'\n⇜ تم حفظ السؤال')
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:Set:Manager:rdd"..msg.sender_id.user_id..":"..msg.chat_id) == "true" then
Redis:set(TheMero.."gamebot:Set:Manager:rdd"..msg.sender_id.user_id..":"..msg.chat_id,"true1uu")
Redis:srem(TheMero.."gamebot:List:Manager", text)
return send(msg.chat_id,msg.id,'\n⇜ تم مسح السؤال')
end
end
if Redis:get(TheMero.."Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'start' then
if msg.content.audio then  
Redis:set(TheMero.."audio:Games"..msg.sender_id.user_id..":"..msg.chat_id,msg.content.audio.audio.remote.id)  
Redis:sadd(TheMero.."audio:Games:Bot",msg.content.audio.audio.remote.id)  
Redis:set(TheMero.."Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id,'started')
return send(msg.chat_id, msg.id,'⇜ ارسل الجواب الان ...')
end   
end
if Redis:get(TheMero.."Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'started' then
local Id_audio = Redis:get(TheMero.."audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
Redis:set(TheMero..'Text:Games:audio'..Id_audio,text)
Redis:del(TheMero.."Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
return send(msg.chat_id, msg.id,'⇜ تم حفظ السؤال والجواب')
end

if Redis:get(TheMero..'Games:Set:Answer'..msg.chat_id) then
if text == ""..(Redis:get(TheMero..'Games:Set:Answer'..msg.chat_id) or '66765$47').."" then 
Redis:del(TheMero.."Games:Set:Answer"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,5)  
Redis:del(TheMero.."Games:Set:Answer"..msg.chat_id)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك ( 5 ) نقاط\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
if Redis:get(TheMero.."mero:All:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'startdel' then
if not Redis:sismember(TheMero.."mero:All:text:Games:Bot",text) then
send(msg_chat_id,msg_id,'⇜ لا يوجد صوت بهذا الاسم عام')
Redis:del(TheMero.."mero:All:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
return false
end
Redis:del(TheMero.."mero:All:audio:Games"..text)
Redis:srem(TheMero.."mero:All:text:Games:Bot",text)  
Redis:del(TheMero.."mero:All:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
send(msg_chat_id,msg_id,'⇜ تم مسح الصوت بنجاح')
return false
end
if Redis:get(TheMero.."mero:All:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'start' then
Redis:set(TheMero..'mero:All:Text:Games:audio'..msg.chat_id,text)
Redis:sadd(TheMero.."mero:All:text:Games:Bot",text)  
Redis:set(TheMero.."mero:All:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id,'started')
send(msg_chat_id,msg_id,'⇜ ارسل الصوت ليتم حفظه باسم : '..text)
return false
end
if Redis:get(TheMero.."mero:All:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'started' then
if msg.content.audio then  
local nameaudio = Redis:get(TheMero..'mero:All:Text:Games:audio'..msg.chat_id)
Redis:set(TheMero.."mero:All:audio:Games"..nameaudio,msg.content.audio.audio.remote.id)  
Redis:del(TheMero.."mero:All:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
send(msg_chat_id,msg_id,'⇜ تم حفظ الصوت باسم : '..nameaudio)
return false
end   
end
if text and not Redis:get(TheMero..'lock_geamsAudio'..msg.chat_id) then
local nameaudio = Redis:get(TheMero.."mero:All:audio:Games"..text)
if nameaudio then
bot.sendAudio(msg_chat_id, msg.id,nameaudio , '', "md") 
end
end
if Redis:get(TheMero.."mero:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'startdel' then
if not Redis:sismember(TheMero.."mero:text:Games:Bot"..msg.chat_id,text) then
send(msg_chat_id,msg_id,'⇜ لا يوجد صوت بهذا الاسم في القروب')
Redis:del(TheMero.."mero:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
return false
end
Redis:del(TheMero.."mero:audio:Games"..msg.chat_id..text)
Redis:srem(TheMero.."mero:text:Games:Bot"..msg.chat_id,text)  
Redis:del(TheMero.."mero:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
send(msg_chat_id,msg_id,'⇜ تم مسح الصوت بنجاح')
return false
end
if Redis:get(TheMero.."mero:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'start' then
Redis:set(TheMero..'mero:Text:Games:audio'..msg.chat_id,text)
Redis:sadd(TheMero.."mero:text:Games:Bot"..msg.chat_id,text)  
Redis:set(TheMero.."mero:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id,'started')
send(msg_chat_id,msg_id,'⇜ ارسل الصوت ليتم حفضه باسم : '..text)
return false
end
if Redis:get(TheMero.."mero:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id) == 'started' then
if msg.content.audio then  
local nameaudio = Redis:get(TheMero..'mero:Text:Games:audio'..msg.chat_id)
Redis:set(TheMero.."mero:audio:Games"..msg.chat_id..nameaudio,msg.content.audio.audio.remote.id)  
Redis:del(TheMero.."mero:Add:audio:Games"..msg.sender_id.user_id..":"..msg.chat_id)
send(msg_chat_id,msg_id,'⇜ تم حفظ الصوت باسم : '..nameaudio)
return false
end   
end
if text and not Redis:get(TheMero..'lock_geamsAudio1'..msg.chat_id) then
local nameaudio = Redis:get(TheMero.."mero:audio:Games"..msg.chat_id..text)
if nameaudio then
bot.sendAudio(msg_chat_id, msg.id,nameaudio , '', "md") 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "truedel" then
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"truefguigf1")
Redis:del(TheMero.."gamebot:newqus"..msg.chat_id,text)
Redis:srem(TheMero.."gamebot:new1", text)
return send(msg_chat_id,msg_id, '\nتم مسح السؤال') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true" then
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true1")
Redis:set(TheMero.."gamebot:newqus"..msg.chat_id,text)
Redis:sadd(TheMero.."gamebot:new1", text)
return send(msg_chat_id,msg_id, '\n⇜ تم حفظ السؤال \n⇜ ارسل الجواب الاول') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true1" then
local quschen = Redis:get(TheMero.."gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."gamebot:newqus:as1"..quschen,text)
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true2")
return send(msg_chat_id,msg_id, ' \n⇜ ارسل الجواب الثاني') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true2" then
local quschen = Redis:get(TheMero.."gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."gamebot:newqus:as2"..quschen,text)
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true3")
return send(msg_chat_id,msg_id, '\n⇜ ارسل الجواب الثالث') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true3" then
local quschen = Redis:get(TheMero.."gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."gamebot:newqus:as3"..quschen,text)
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true4")
return send(msg_chat_id,msg_id, '\n⇜ ارسل الجواب الرابع') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true4" then
local quschen = Redis:get(TheMero.."gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."gamebot:newqus:as0"..quschen,text)
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true44")
return send(msg_chat_id,msg_id, '\n⇜ تم حفظ الاجوبة \n⇜ ارسل الجواب الصحيح') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true44" then
local quschen = Redis:get(TheMero.."gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."gamebot:newqus:as4"..quschen,text)
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true186")
return send(msg_chat_id,msg_id, '\n⇜ تم حفظ الجواب الصحيح') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "truedel" then
send(msg_chat_id,msg_id, '\n⇜ تم مسح الغز ')
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"truefguigf1")
Redis:del(TheMero.."lkz:gamebot:newqus"..msg.chat_id,text)
Redis:srem(TheMero.."lkz:gamebot:new1", text)
return false 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true" then
send(msg_chat_id,msg_id, '\n⇜ تم حفظ اللغز \n⇜ ارسل الجواب الاول')
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true1")
Redis:set(TheMero.."lkz:gamebot:newqus"..msg.chat_id,text)
Redis:sadd(TheMero.."lkz:gamebot:new1", text)
return false 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true1" then
send(msg_chat_id,msg_id, ' \n⇜ ارسل الجواب الثاني')
local quschen = Redis:get(TheMero.."lkz:gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."lkz:gamebot:newqus:as1"..quschen,text)
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true2")
return false 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true2" then
send(msg_chat_id,msg_id, '\n⇜ ارسل الجواب الثالث')
local quschen = Redis:get(TheMero.."lkz:gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."lkz:gamebot:newqus:as2"..quschen,text)
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true3")
return false 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true3" then
send(msg_chat_id,msg_id, ' \n⇜ ارسل الجواب الصحيح')
local quschen = Redis:get(TheMero.."lkz:gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."lkz:gamebot:newqus:as3"..quschen,text)
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true44")
return false 
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id) == "true44" then
send(msg_chat_id,msg_id, '\n⇜ تم حفظ الجواب الصحيح')
local quschen = Redis:get(TheMero.."lkz:gamebot:newqus"..msg.chat_id)
Redis:set(TheMero.."lkz:gamebot:newqus:as4"..quschen,text)
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,"true186")
return false 
end
end
if Redis:get(TheMero..":"..msg.sender_id.user_id..":lov_Bots"..msg.chat_id) == "sendlove" then
num = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnum = num[math.random(#num)]
local tttttt = '⇜ نسبة الحب بيـن : '..text..' '..sendnum..'%'
send(msg_chat_id,msg_id,tttttt) 
Redis:del(TheMero..":"..msg.sender_id.user_id..":lov_Bots"..msg.chat_id)
end
if Redis:get(TheMero..":"..msg.sender_id.user_id..":lov_Bottts"..msg.chat_id) == "sendlove" then
num = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnum = num[math.random(#num)]
local tttttt = '⇜ نسبة الغباء : '..text..' '..sendnum..'%'
send(msg_chat_id,msg_id,tttttt) 
Redis:del(TheMero..":"..msg.sender_id.user_id..":lov_Bottts"..msg.chat_id)
end
if Redis:get(TheMero..":"..msg.sender_id.user_id..":lov_Botttuus"..msg.chat_id) == "sendlove" then
num = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnum = num[math.random(#num)]
local tttttt = '⇜ نسبة الذكاء : '..text..' '..sendnum..'%'
send(msg_chat_id,msg_id,tttttt) 
Redis:del(TheMero..":"..msg.sender_id.user_id..":lov_Botttuus"..msg.chat_id)
end
if text and Redis:get(TheMero..":"..msg.sender_id.user_id..":krh_Bots"..msg.chat_id) == "sendkrhe" then
num = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnum = num[math.random(#num)]
local tttttt = '⇜ نسبه الكره : '..text..' '..sendnum..'%'
send(msg_chat_id,msg_id,tttttt) 
Redis:del(TheMero..":"..msg.sender_id.user_id..":krh_Bots"..msg.chat_id)
end
if text and text ~="نسبه الرجوله" and Redis:get(TheMero..":"..msg.sender_id.user_id..":rjo_Bots"..msg.chat_id) == "sendrjoe" then
numj = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","🥰 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnuj = numj[math.random(#numj)]
local tttttt = '⇜ نسبة الرجوله : '..text..' '..sendnuj..'%'
send(msg_chat_id,msg_id,tttttt) 
Redis:del(TheMero..":"..msg.sender_id.user_id..":rjo_Bots"..msg.chat_id)
end
if text and text ~="نسبه الانوثه" and Redis:get(TheMero..":"..msg.sender_id.user_id..":ano_Bots"..msg.chat_id) == "sendanoe" then
numj = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","?? 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnuj = numj[math.random(#numj)]
local tttttt = '⇜ نسبه الانوثة : '..text..' '..sendnuj..'%'
send(msg_chat_id,msg_id,tttttt) 
Redis:del(TheMero..":"..msg.sender_id.user_id..":ano_Bots"..msg.chat_id)
end
if Redis:get(TheMero.."Mero:Game:Arbieq"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Arbieq"..msg.chat_id) then 
Redis:del(TheMero.."Mero:Game:Arbieq"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end

---------------------- عقـــاب ----------------------
if Redis:get(TheMero.."Start_Ahkamm"..msg.chat_id) then
if text == "انا" then
if Redis:sismember(TheMero..'List_Ahkamm'..msg.chat_id,msg.sender_id.user_id) then
return bot.sendText(msg.chat_id,msg.id,'⇜ اسمك موجود من قبل',"md",true)
end
Redis:sadd(TheMero..'members_Ahkamm'..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(TheMero..'List_Ahkamm'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Witting_StartGamehh"..msg.chat_id,1400,true)
local AkZilzal = '⇜ تم ضفتك للعبة\n\n⇜ اللي يبي يلعب يرسل كلمة (انا) او يضغط الزر\n⇜ للانتهاء يرسل (نعم) اللي بدأ اللعبة'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اضغـط للانضمام', callback_data = '/Akab'},},}
local rep = msg.id/2097152/0.5
return https.request("https://api.telegram.org/bot"..Token..'/sendMessage?chat_id=' ..msg_chat_id.. '&text=' .. URL.escape(AkZilzal).."&reply_to_message_id="..rep..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))
end
end
---------------------- احكـــام ----------------------
if text == "انا" and Redis:get(TheMero.."Start_Ahkkam"..msg.chat_id) then
if Redis:sismember(TheMero..'List_Ahkkam'..msg.chat_id,msg.sender_id.user_id) then
return bot.sendText(msg.chat_id,msg.id,'⇜ اسمك موجود من قبل',"md",true)
end
Redis:sadd(TheMero..'List_Ahkkam'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Witting_StartGameh"..msg.chat_id,1400,true)
local list = Redis:smembers(TheMero..'List_Ahkkam'..msg.chat_id) 
if #list == 2 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local zzllzz = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,zzllzz, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/joineahkam'},},
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 10 then
local message = '⇜ وصل عدد الاعبين للحد الاعلى\nالمشتركين في لعبة الاحكام هم :' 
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
{{text = 'بدء اللعبة', data = '/startahkam'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
end
end
---------------------- كرســـي الاعتـــراف ----------------------
if text == "انا" and Redis:get(TheMero.."Start_Koorsi"..msg.chat_id) then
if Redis:sismember(TheMero..'List_Koorsi'..msg.chat_id,msg.sender_id.user_id) then
return bot.sendText(msg.chat_id,msg.id,'⇜ اسمك موجود من قبل',"md",true)
end
Redis:sadd(TheMero..'List_Koorsi'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Witting_StartGameek"..msg.chat_id,1400,true)
local list = Redis:smembers(TheMero..'List_Koorsi'..msg.chat_id) 
if #list == 2 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local zzllzz = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},}}
return bot.sendText(msg.chat_id,msg_id,zzllzz, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..msg.sender_id.user_id..')'
local message = '⇜ عدد الاعبين : '..#list..' \n⇜ انضم للعبة \n'..Teext
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
{{text = 'اضغط للانضمام', data = '/Koorsy'},},
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
elseif #list == 10 then
local message = '⇜ وصل عدد الاعبين للحد الاعلى\n⇜ المشاركين في لعبة كرسي الاعتراف هم :' 
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
{{text = 'بدء اللعبة', data = '/startkoorsi'},},}}
return bot.sendText(msg.chat_id,msg_id,message, 'md', true, false, false, false, reply_markup)
end
end
end
end

if Redis:get(TheMero.."Mero:Game:Arbieq:aslame"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Arbieq:aslame"..msg.chat_id) then 
Redis:del(TheMero.."Mero:Game:Arbieq:aslame"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
if Redis:get(TheMero.."Mero:Game:Arbieq:aslamek"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Arbieq:aslamek"..msg.chat_id) then 
Redis:del(TheMero.."Mero:Game:Arbieq:aslamek"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end
if Redis:get(TheMero.."Mero:Game:Monotonousss"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:Monotonousss"..msg.chat_id) then 
Redis:del(TheMero.."Mero:Game:Monotonousss"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end

if Redis:get(TheMero.."mshaher"..msg.chat_id) then
if text == Redis:get(TheMero.."mshaher"..msg.chat_id) then
Redis:del(TheMero.."mshaher"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true)  
end
end 
if Redis:get(TheMero.."mshaherr"..msg.chat_id) then
if text == Redis:get(TheMero.."mshaherr"..msg.chat_id) then
Redis:del(TheMero.."mshaherr"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true)  
end
end
if Redis:get(TheMero.."mshaherrr"..msg.chat_id) then
if text == Redis:get(TheMero.."mshaherrr"..msg.chat_id) then
Redis:del(TheMero.."mshaherrr"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true)  
end
end  
if Redis:get(TheMero.."photohzr"..msg.chat_id) then
if text == Redis:get(TheMero.."photohzr"..msg.chat_id) then
Redis:del(TheMero.."photohzr"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true)  
end
end 

if Redis:get(TheMero.."Start_rhan"..msg.chat_id) then
if text and text:match('^انا (.*)$') then
local UserName = text:match('^انا (.*)$')
local coniss = coin(UserName)
ballancee = Redis:get(TheMero.."boob"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 999 then
return send(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 1000 ريال 💵\n✧","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return send(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✧","md",true)
end
if Redis:sismember(TheMero..'List_rhan'..msg.chat_id,msg.sender_id.user_id) then
return send(msg.chat_id,msg.id,'⇜ انت مضاف من قبل .',"md",true)
end
Redis:set(TheMero.."playerrhan"..msg.chat_id,msg.sender_id.user_id)
Redis:set(TheMero.."playercoins"..msg.chat_id..msg.sender_id.user_id,coniss)
Redis:sadd(TheMero..'List_rhan'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Witting_Startrhan"..msg.chat_id,1400,true)
benrahan = Redis:get(TheMero.."allrhan"..msg.chat_id..12345) or 0
rehan = tonumber(benrahan) + tonumber(coniss)
Redis:set(TheMero.."allrhan"..msg.chat_id..12345 , rehan)
local ballancee = Redis:get(TheMero.."boob"..msg.sender_id.user_id) or 0
rehan = tonumber(ballancee) - tonumber(coniss)
Redis:set(TheMero.."boob"..msg.sender_id.user_id , rehan)
return send(msg.chat_id,msg.id,'⇜ تم ضفتك للرهان \n⇜ للانتهاء يرسل ( نعم ) اللي بدء الرهان .',"md",true)
end
end


if text == "حظي" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
local list = {"3","5","-3","-5","="}
RtList = list[math.random(#list)]
if RtList == "3" then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,3)
StatusRt = "الف مبروك حظك حلو ربحت 3 نقاط"
elseif RtList == "5" then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,5)
StatusRt = "الف مبروك حظك حلو ربحت 5 نقاط"
elseif RtList == "-3" then
Redis:decrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,3)  
StatusRt = "للاسف حظك زفت خسرت 3 نقاط"
elseif RtList == "-5" then
Redis:decrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,5)  
StatusRt = "للاسف حظك زفت خسرت 5 نقاط"
elseif RtList == "=" then
StatusRt = "حظك ماش اليوم لا ربح ولا خسارة"
end
return send(msg.chat_id,msg.id,"⇜ "..StatusRt,"md",true)  
end
if text == "عربي" or text == "العربي" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
KlamSpeed = {
"فحوص",
"ملعقة",
"دروس",
"مراحل",
"صفوف",
"قائمة",
"حلق",
"طوابع",
"عصور",
"أوائل",
"وجه",
"أقارب",
"خد",
"جامع",
"أنوف",
"ذيول",
"فاكهة",
"ظروف",
"مسجد",
"رؤوس",
"شوارع",
"بطن",
"مسابح",
"لصوص",
"هاتف",
"خط",
"حدائق",
"سد",
"مسارح",
"عقل",
"مشكلة",
"ملك",
"رسالة",
"عقد",
"وظائف",
"فصول",
"جرائم",
"بيت",
"مرتبة",
"شهور",
"مدرسة",
"بحر",
"مائدة",
"بنك",
"منطقة",
"علم",
"كرسي",
"قدور",
"منازل"
};
name = KlamSpeed[math.random(#KlamSpeed)]
send(msg.chat_id,msg.id,"⇜ ارسل مفرد او جمع : ( "..name.." )","md",true)  
name = string.gsub(name,"فحوص","فحص")
name = string.gsub(name,"ملعقة","ملاعق")
name = string.gsub(name,"دروس","درس")
name = string.gsub(name,"مراحل","مرحله")
name = string.gsub(name,"صفوف","صف")
name = string.gsub(name,"قائمة","قوائم")
name = string.gsub(name,"حلق","حلوق")
name = string.gsub(name,"طوابع","طابع")
name = string.gsub(name,"عصور","عصر")
name = string.gsub(name,"أوائل","اول")
name = string.gsub(name,"وجه","وجوه")
name = string.gsub(name,"أقارب","قريب")
name = string.gsub(name,"خد","خدود")
name = string.gsub(name,"جامع","جوامع")
name = string.gsub(name,"أنوف","انف")
name = string.gsub(name,"ذيول","ذيل")
name = string.gsub(name,"فاكهة","فواكه")
name = string.gsub(name,"ظروف","ضرف")
name = string.gsub(name,"مسجد","مساجد")
name = string.gsub(name,"رؤوس","راس")
name = string.gsub(name,"شوارع","شارع")
name = string.gsub(name,"بطن","بطون")
name = string.gsub(name,"مسابح","مسبح")
name = string.gsub(name,"لصوص","لص")
name = string.gsub(name,"هاتف","هواتف")
name = string.gsub(name,"خط","خطوط")
name = string.gsub(name,"حدائق","حديقه")
name = string.gsub(name,"سد","سدود")
name = string.gsub(name,"مسارح","مسرح")
name = string.gsub(name,"عقل","عقول")
name = string.gsub(name,"مشكلة","مشاكل")
name = string.gsub(name,"ملك","ملوك")
name = string.gsub(name,"رسالة","رسائل")
name = string.gsub(name,"عقد","عقود")
name = string.gsub(name,"وظائف","وظيفه")
name = string.gsub(name,"فصول","فصل")
name = string.gsub(name,"جرائم","جريمه")
name = string.gsub(name,"بيت","بيوت")
name = string.gsub(name,"مرتبة","مراتب")
name = string.gsub(name,"شهور","شهر")
name = string.gsub(name,"مدرسة","مدارس")
name = string.gsub(name,"بحر","بحور")
name = string.gsub(name,"مائدة","موائد")
name = string.gsub(name,"بنك","بنوك")
name = string.gsub(name,"منطقة","مناطق")
name = string.gsub(name,"علم","علوم")
name = string.gsub(name,"كرسي","كراسي")
name = string.gsub(name,"قدور","قدر")
name = string.gsub(name,"منازل","منزل")
Redis:set(TheMero.."Mero:Game:Arbieq"..msg.chat_id,name)
return false
end
if text == "دين" or text == "الدين" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
KlamSpeed = {
"من أكثر الأنبياء ذكراً بالقرآن ؟",
" ما هي السور التي بدأت بالحمد ؟",
" مَنُ مِنْ الخلفاء الراشدين كان الأكبر سناً عندما لقي ربه ؟",
" كم كان عمر علي بن أبي طالب رضي الله عنه حين استشهد ؟",
" ما السورة التي بُدأت باسم من أسماء الله الحسنى؟",
" من أول من استلم الحجر الأسود من الأئمة ؟",
" ما السورة التي بدأت باسم ثمرتين؟",
" من أول من أدخل عبادة الأصنام ؟",
" من أول من سل سيف في سبيل الله ؟",
" من أول نبي قال أما بعد ؟",
" كم كان عدد المسلمين في غزوة أحد ؟",
" من الذي كفل السيدة مريم؟",
" من هو النبي الذي روادته المرأة التي تربى في بيتها؟",
" من النبي الذي طلب منه قومه أن ينزل لهم مائدة من السماء ؟",
" من هو أول الأئمة الأربعة ؟",
" من أول من دول علم أصول الفقه؟",
" من صاحب جوهرة التوحيد؟",
" كم عدد مذاهب المسلمين؟",
" من هو الصحابي الجليل الذي حضر العرضة الأخيرة للرسول للقرآن الكريم ؟",
" من هو الصحابي الجليل الذي اقترح على أبي بكر الصديق أن يجمع القرآن الكريم ؟"
};
name = KlamSpeed[math.random(#KlamSpeed)]
send(msg.chat_id,msg.id,""..name.."","md",true)  
name = string.gsub(name," من أكثر الأنبياء ذكراً بالقرآن ؟","موسى")
name = string.gsub(name," ما هي السور التي بدأت بالحمد ؟","الفاتحه")
name = string.gsub(name," مَنُ مِنْ الخلفاء الراشدين كان الأكبر سناً عندما لقي ربه ؟","عثمان")
name = string.gsub(name," كم كان عمر علي بن أبي طالب رضي الله عنه حين استشهد ؟","63")
name = string.gsub(name," ما السورة التي بُدأت باسم من أسماء الله الحسنى؟","الرحمن")
name = string.gsub(name," من أول من استلم الحجر الأسود من الأئمة ؟","عبدالله بن الزبير")
name = string.gsub(name," ما السورة التي بدأت باسم ثمرتين؟","التين")
name = string.gsub(name," من أول من أدخل عبادة الأصنام ؟","ابو خزاعه")
name = string.gsub(name," من أول من سل سيف في سبيل الله ؟","الزبير بن العوام")
name = string.gsub(name," من أول نبي قال أما بعد ؟","داود")
name = string.gsub(name," كم كان عدد المسلمين في غزوة أحد ؟","100")
name = string.gsub(name," من الذي كفل السيدة مريم؟","زكريا")
name = string.gsub(name," من هو النبي الذي روادته المرأة التي تربى في بيتها؟","يوسف")
name = string.gsub(name," من النبي الذي طلب منه قومه أن ينزل لهم مائدة من السماء ؟","عيسى")
name = string.gsub(name," من هو أول الأئمة الأربعة ؟","ابو حنيفه")
name = string.gsub(name," من أول من دول علم أصول الفقه؟","الشافعي")
name = string.gsub(name," من صاحب جوهرة التوحيد؟","برهان الدين")
name = string.gsub(name," كم عدد مذاهب المسلمين؟","4")
name = string.gsub(name," من هو الصحابي الجليل الذي حضر العرضة الأخيرة للرسول للقرآن الكريم ؟","زيد بن ثابت")
name = string.gsub(name," من هو الصحابي الجليل الذي اقترح على أبي بكر الصديق أن يجمع القرآن الكريم ؟","عمر بن الخطاب")
Redis:set(TheMero.."Mero:Game:Arbieq:aslame"..msg.chat_id,name)
return false
end
if text == "اية" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
KlamSpeed = {
"﴿فَادْعُوهُ مُخْلِصِينَ لَهُ الدِّينَ﴾","﴿قُلْ يَجْمَعُ بَيْنَنَا رَبُّنَا ثُمَّ يَفْتَحُ بَيْنَنَا بِالْحَقِّ وَهُوَ الْفَتَّاحُ الْعَلِيمُ﴾","﴿وَيُسْقَوْنَ فِيهَا كَأْسًا كَانَ مِزَاجُهَا زَنْجَبِيلًا﴾","﴿أَلَمْ تَكُنْ آيَاتِي تُتْلَىٰ عَلَيْكُمْ فَكُنْتُمْ بِهَا تُكَذِّبُونَ﴾","﴿إِنَّ اللَّهَ لَا يُخْلِفُ الْمِيعَادَ﴾","﴿ارْجِعِي إِلَىٰ رَبِّكِ رَاضِيَةً مَرْضِيَّةً﴾","﴿وَاصْبِرْ لِحُكْمِ رَبِّكَ فَإِنَّكَ بِأَعْيُنِنَا﴾","﴿ارْجِعْ إِلَيْهِمْ فَلَنَأْتِيَنَّهُمْ بِجُنُودٍ لَا قِبَلَ لَهُمْ بِهَا وَلَنُخْرِجَنَّهُمْ مِنْهَا أَذِلَّةً وَهُمْ صَاغِرُونَ﴾","﴿إِنَّ اللَّهَ وَمَلَائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا﴾","﴿الَّذِينَ يُوفُونَ بِعَهْدِ اللَّهِ وَلَا يَنْقُضُونَ الْمِيثَاقَ﴾","﴿كَبُرَ مَقْتًا عِنْدَ اللَّهِ أَنْ تَقُولُوا مَا لَا تَفْعَلُونَ﴾","﴿وَاخْفِضْ لَهُمَا جَنَاحَ الذُّلِّ مِنَ الرَّحْمَةِ وَقُلْ رَبِّ ارْحَمْهُمَا كَمَا رَبَّيَانِي صَغِيرًا﴾","﴿يَا بُنَيَّ لَا تُشْرِكْ بِاللَّهِ﴾","﴿دَعْوَاهُمْ فِيهَا سُبْحَانَكَ اللَّهُمَّ وَتَحِيَّتُهُمْ فِيهَا سَلَامٌ وَآخِرُ دَعْوَاهُمْ أَنِ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ﴾","﴿ادْخُلُوا الْجَنَّةَ بِمَا كُنْتُمْ تَعْمَلُونَ﴾","﴿لَكُمْ دِينُكُمْ وَلِيَ دِينِ﴾","﴿أَيَحْسَبُ أَنْ لَمْ يَرَهُ أَحَدٌ﴾","﴿وَمَا يَسْتَوِي الْأَعْمَىٰ وَالْبَصِيرُ﴾","﴿أَلَمْ نَشْرَحْ لَكَ صَدْرَكَ﴾","﴿ذَٰلِكَ وَمَنْ يُعَظِّمْ شَعَائِرَ اللَّهِ فَإِنَّهَا مِنْ تَقْوَى الْقُلُوبِ﴾","﴿وَاللَّهُ أَعْلَمُ بِأَعْدَائِكُمْ وَكَفَىٰ بِاللَّهِ وَلِيًّا وَكَفَىٰ بِاللَّهِ نَصِيرًا﴾","﴿إِنَّ اللَّهَ لَا يُحِبُّ مَنْ كَانَ خَوَّانًا أَثِيمًا﴾","﴿وُجُوهٌ يَوْمَئِذٍ مُسْفِرَةٌ﴾","﴿فَلْيَنْظُرِ الْإِنْسَانُ مِمَّ خُلِقَ﴾","﴿أَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِأَصْحَابِ الْفِيلِ﴾","﴿نُمَتِّعُهُمْ قَلِيلًا ثُمَّ نَضْطَرُّهُمْ إِلَىٰ عَذَابٍ غَلِيظٍ﴾","﴿وَلَقَدْ يَسَّرْنَا الْقُرْآنَ لِلذِّكْرِ فَهَلْ مِنْ مُدَّكِرٍ﴾","﴿لِيُوَفِّيَهُمْ أُجُورَهُمْ وَيَزِيدَهُمْ مِنْ فَضْلِهِ إِنَّهُ غَفُورٌ شَكُورٌ﴾","﴿وَلَقَدْ نَعْلَمُ أَنَّكَ يَضِيقُ صَدْرُكَ بِمَا يَقُولُونَ﴾","﴿ثُمَّ إِنَّكُمْ يَوْمَ الْقِيَامَةِ عِنْدَ رَبِّكُمْ تَخْتَصِمُونَ﴾","﴿وَالَّذِينَ لَا يَشْهَدُونَ الزُّورَ وَإِذَا مَرُّوا بِاللَّغْوِ مَرُّوا كِرَامًا﴾","﴿مَنْ عَمِلَ صَالِحًا فَلِنَفْسِهِ وَمَنْ أَسَاءَ فَعَلَيْهَا وَمَا رَبُّكَ بِظَلَّامٍ لِلْعَبِيدِ﴾","﴿ثُمَّ لْيَقْضُوا تَفَثَهُمْ وَلْيُوفُوا نُذُورَهُمْ وَلْيَطَّوَّفُوا بِالْبَيْتِ الْعَتِيقِ﴾","﴿قَالَتْ إِنِّي أَعُوذُ بِالرَّحْمَٰنِ مِنْكَ إِنْ كُنْتَ تَقِيًّا﴾","﴿مَنْ يُطِعِ الرَّسُولَ فَقَدْ أَطَاعَ اللَّهَ﴾","﴿قُلْ إِنَّ الْأَمْرَ كُلَّهُ لِلَّهِ﴾","﴿إِنَّ كَيْدَ الشَّيْطَانِ كَانَ ضَعِيفًا﴾","﴿وَقَضَيْنَا إِلَيْهِ ذَٰلِكَ الْأَمْرَ﴾","﴿إِنَّ الَّذِينَ قَالُوا رَبُّنَا اللَّهُ ثُمَّ اسْتَقَامُوا فَلَا خَوْفٌ عَلَيْهِمْ وَلَا هُمْ يَحْزَنُونَ﴾","﴿إِنَّ الْمُصَّدِّقِينَ وَالْمُصَّدِّقَاتِ وَأَقْرَضُوا اللَّهَ قَرْضًا حَسَنًا يُضَاعَفُ لَهُمْ وَلَهُمْ أَجْرٌ كَرِيمٌ﴾","﴿وَأَقِمِ الصَّلَاةَ إِنَّ الصَّلَاةَ تَنْهَىٰ عَنِ الْفَحْشَاءِ وَالْمُنْكَرِ﴾","﴿وَتُحِبُّونَ الْمَالَ حُبًّا جَمًّا﴾","﴿لِيَغْفِرَ لَكَ اللَّهُ مَا تَقَدَّمَ مِنْ ذَنْبِكَ وَمَا تَأَخَّرَ وَيُتِمَّ نِعْمَتَهُ عَلَيْكَ وَيَهْدِيَكَ صِرَاطًا مُسْتَقِيمًا﴾","﴿إِنَّ الْمُتَّقِينَ فِي مَقَامٍ أَمِينٍ﴾","﴿كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ ثُمَّ إِلَيْنَا تُرْجَعُونَ﴾"
};
name = KlamSpeed[math.random(#KlamSpeed)]
send(msg.chat_id,msg.id,""..name.."","md",true)  
name = string.gsub(name,"﴿فَادْعُوهُ مُخْلِصِينَ لَهُ الدِّينَ﴾","غافر")
name = string.gsub(name,"﴿قُلْ يَجْمَعُ بَيْنَنَا رَبُّنَا ثُمَّ يَفْتَحُ بَيْنَنَا بِالْحَقِّ وَهُوَ الْفَتَّاحُ الْعَلِيمُ﴾","سبأ")
name = string.gsub(name,"﴿وَيُسْقَوْنَ فِيهَا كَأْسًا كَانَ مِزَاجُهَا زَنْجَبِيلًا﴾","الانسان")
name = string.gsub(name,"﴿أَلَمْ تَكُنْ آيَاتِي تُتْلَىٰ عَلَيْكُمْ فَكُنْتُمْ بِهَا تُكَذِّبُونَ﴾","المؤمنون")
name = string.gsub(name,"﴿إِنَّ اللَّهَ لَا يُخْلِفُ الْمِيعَادَ﴾","ال عمران")
name = string.gsub(name,"﴿ارْجِعِي إِلَىٰ رَبِّكِ رَاضِيَةً مَرْضِيَّةً﴾","الفجر")
name = string.gsub(name,"﴿وَاصْبِرْ لِحُكْمِ رَبِّكَ فَإِنَّكَ بِأَعْيُنِنَا﴾","الطور")
name = string.gsub(name,"﴿ارْجِعْ إِلَيْهِمْ فَلَنَأْتِيَنَّهُمْ بِجُنُودٍ لَا قِبَلَ لَهُمْ بِهَا وَلَنُخْرِجَنَّهُمْ مِنْهَا أَذِلَّةً وَهُمْ صَاغِرُونَ﴾","النمل")
name = string.gsub(name,"﴿إِنَّ اللَّهَ وَمَلَائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا﴾","الاحزاب")
name = string.gsub(name,"﴿الَّذِينَ يُوفُونَ بِعَهْدِ اللَّهِ وَلَا يَنْقُضُونَ الْمِيثَاقَ﴾","الرعد")
name = string.gsub(name,"﴿كَبُرَ مَقْتًا عِنْدَ اللَّهِ أَنْ تَقُولُوا مَا لَا تَفْعَلُونَ﴾","الصف")
name = string.gsub(name,"﴿وَاخْفِضْ لَهُمَا جَنَاحَ الذُّلِّ مِنَ الرَّحْمَةِ وَقُلْ رَبِّ ارْحَمْهُمَا كَمَا رَبَّيَانِي صَغِيرًا﴾","الاسراء")
name = string.gsub(name,"﴿يَا بُنَيَّ لَا تُشْرِكْ بِاللَّهِ﴾","لقمان")
name = string.gsub(name,"﴿دَعْوَاهُمْ فِيهَا سُبْحَانَكَ اللَّهُمَّ وَتَحِيَّتُهُمْ فِيهَا سَلَامٌ وَآخِرُ دَعْوَاهُمْ أَنِ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ﴾","يونس")
name = string.gsub(name,"﴿ادْخُلُوا الْجَنَّةَ بِمَا كُنْتُمْ تَعْمَلُونَ﴾","النحل")
name = string.gsub(name,"﴿لَكُمْ دِينُكُمْ وَلِيَ دِينِ﴾","الكافرون")
name = string.gsub(name,"﴿أَيَحْسَبُ أَنْ لَمْ يَرَهُ أَحَدٌ﴾","البلد")
name = string.gsub(name,"﴿وَمَا يَسْتَوِي الْأَعْمَىٰ وَالْبَصِيرُ﴾","فاطر")
name = string.gsub(name,"﴿أَلَمْ نَشْرَحْ لَكَ صَدْرَكَ﴾","الشرح")
name = string.gsub(name,"﴿ذَٰلِكَ وَمَنْ يُعَظِّمْ شَعَائِرَ اللَّهِ فَإِنَّهَا مِنْ تَقْوَى الْقُلُوبِ﴾","الحج")
name = string.gsub(name,"﴿وَاللَّهُ أَعْلَمُ بِأَعْدَائِكُمْ وَكَفَىٰ بِاللَّهِ وَلِيًّا وَكَفَىٰ بِاللَّهِ نَصِيرًا﴾","النساء")
name = string.gsub(name,"﴿إِنَّ اللَّهَ لَا يُحِبُّ مَنْ كَانَ خَوَّانًا أَثِيمًا﴾","النساء")
name = string.gsub(name,"﴿وُجُوهٌ يَوْمَئِذٍ مُسْفِرَةٌ﴾","عبس")
name = string.gsub(name,"﴿فَلْيَنْظُرِ الْإِنْسَانُ مِمَّ خُلِقَ﴾","الطارق")
name = string.gsub(name,"﴿أَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِأَصْحَابِ الْفِيلِ﴾","الفيل")
name = string.gsub(name,"﴿نُمَتِّعُهُمْ قَلِيلًا ثُمَّ نَضْطَرُّهُمْ إِلَىٰ عَذَابٍ غَلِيظٍ﴾","لقمان")
name = string.gsub(name,"﴿وَلَقَدْ يَسَّرْنَا الْقُرْآنَ لِلذِّكْرِ فَهَلْ مِنْ مُدَّكِرٍ﴾","القمر")
name = string.gsub(name,"﴿لِيُوَفِّيَهُمْ أُجُورَهُمْ وَيَزِيدَهُمْ مِنْ فَضْلِهِ إِنَّهُ غَفُورٌ شَكُورٌ﴾","فاطر")
name = string.gsub(name,"﴿وَلَقَدْ نَعْلَمُ أَنَّكَ يَضِيقُ صَدْرُكَ بِمَا يَقُولُونَ﴾","الحجر")
name = string.gsub(name,"﴿وَالْأَرْضَ بَعْدَ ذَٰلِكَ دَحَاهَا﴾","النازعات")
name = string.gsub(name,"﴿ثُمَّ إِنَّكُمْ يَوْمَ الْقِيَامَةِ عِنْدَ رَبِّكُمْ تَخْتَصِمُونَ﴾","الزمر")
name = string.gsub(name,"﴿وَالَّذِينَ لَا يَشْهَدُونَ الزُّورَ وَإِذَا مَرُّوا بِاللَّغْوِ مَرُّوا كِرَامًا﴾","الفرقان")
name = string.gsub(name,"﴿مَنْ عَمِلَ صَالِحًا فَلِنَفْسِهِ وَمَنْ أَسَاءَ فَعَلَيْهَا وَمَا رَبُّكَ بِظَلَّامٍ لِلْعَبِيدِ﴾","فصلت")
name = string.gsub(name,"﴿ثُمَّ لْيَقْضُوا تَفَثَهُمْ وَلْيُوفُوا نُذُورَهُمْ وَلْيَطَّوَّفُوا بِالْبَيْتِ الْعَتِيقِ﴾","الحج")
name = string.gsub(name,"﴿قَالَتْ إِنِّي أَعُوذُ بِالرَّحْمَٰنِ مِنْكَ إِنْ كُنْتَ تَقِيًّا﴾","مريم")
name = string.gsub(name,"﴿مَنْ يُطِعِ الرَّسُولَ فَقَدْ أَطَاعَ اللَّهَ﴾","النساء")
name = string.gsub(name,"﴿قُلْ إِنَّ الْأَمْرَ كُلَّهُ لِلَّهِ﴾","ال عمران")
name = string.gsub(name,"﴿إِنَّ كَيْدَ الشَّيْطَانِ كَانَ ضَعِيفًا﴾","النساء")
name = string.gsub(name,"﴿وَقَضَيْنَا إِلَيْهِ ذَٰلِكَ الْأَمْرَ﴾","الحجر")
name = string.gsub(name,"﴿إِنَّ الَّذِينَ قَالُوا رَبُّنَا اللَّهُ ثُمَّ اسْتَقَامُوا فَلَا خَوْفٌ عَلَيْهِمْ وَلَا هُمْ يَحْزَنُونَ﴾","الاحقاف")
name = string.gsub(name,"﴿إِنَّ الْمُصَّدِّقِينَ وَالْمُصَّدِّقَاتِ وَأَقْرَضُوا اللَّهَ قَرْضًا حَسَنًا يُضَاعَفُ لَهُمْ وَلَهُمْ أَجْرٌ كَرِيمٌ﴾","الحديد")
name = string.gsub(name,"﴿وَأَقِمِ الصَّلَاةَ إِنَّ الصَّلَاةَ تَنْهَىٰ عَنِ الْفَحْشَاءِ وَالْمُنْكَرِ﴾","العنكبوت")
name = string.gsub(name,"﴿وَتُحِبُّونَ الْمَالَ حُبًّا جَمًّا﴾","الفجر")
name = string.gsub(name,"﴿لِيَغْفِرَ لَكَ اللَّهُ مَا تَقَدَّمَ مِنْ ذَنْبِكَ وَمَا تَأَخَّرَ وَيُتِمَّ نِعْمَتَهُ عَلَيْكَ وَيَهْدِيَكَ صِرَاطًا مُسْتَقِيمًا﴾","الفتح")
name = string.gsub(name,"﴿إِنَّ الْمُتَّقِينَ فِي مَقَامٍ أَمِينٍ﴾","الدخان")
name = string.gsub(name,"﴿كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ ثُمَّ إِلَيْنَا تُرْجَعُونَ﴾","العنكبوت")
Redis:set(TheMero.."Mero:Game:Arbieq:aslamek"..msg.chat_id,name)
return false
end
if text == "فكك" or text == "تفكيك" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
send(msg.chat_id,msg.id,"⇜ فكك : ( "..name.." )","md",true)  
name = string.gsub(name,"سحور","س ح و ر")
name = string.gsub(name,"سياره","س ي ا ر ه")
name = string.gsub(name,"استقبال","ا س ت ق ب ا ل")
name = string.gsub(name,"قنفه","ق ن ف ه")
name = string.gsub(name,"ايفون","ا ي ف و ن")
name = string.gsub(name,"بزونه","ب ز و ن ه")
name = string.gsub(name,"مطبخ","م ط ب خ")
name = string.gsub(name,"كرستيانو","ك ر س ت ي ا ن و")
name = string.gsub(name,"دجاجه","د ج ا ج ه")
name = string.gsub(name,"مدرسه","م د ر س ه")
name = string.gsub(name,"الوان","ا ل و ا ن")
name = string.gsub(name,"غرفه","غ ر ف ه")
name = string.gsub(name,"ثلاجه","ث ل ا ج ه")
name = string.gsub(name,"كهوه","ك ه و ه")
name = string.gsub(name,"سفينه","س ف ي ن ه")
name = string.gsub(name,"العراق","ا ل ع ر ا ق")
name = string.gsub(name,"محطه","م ح ط ه")
name = string.gsub(name,"طياره","ط ي ا ر ه")
name = string.gsub(name,"رادار","ر ا د ا ر")
name = string.gsub(name,"منزل","م ن ز ل")
name = string.gsub(name,"مستشفى","م س ت ش ف ى")
name = string.gsub(name,"كهرباء","ك ه ر ب ا ء")
name = string.gsub(name,"تفاحه","ت ف ا ح ه")
name = string.gsub(name,"اخطبوط","ا خ ط ب و ط")
name = string.gsub(name,"سلمون","س ل م و ن")
name = string.gsub(name,"فرنسا","ف ر ن س ا")
name = string.gsub(name,"برتقاله","ب ر ت ق ا ل ه")
name = string.gsub(name,"تفاح","ت ف ا ح")
name = string.gsub(name,"مطرقه","م ط ر ق ه")
name = string.gsub(name,"بتيته","ب ت ي ت ه")
name = string.gsub(name,"لهانه","ل ه ا ن ه")
name = string.gsub(name,"شباك","ش ب ا ك")
name = string.gsub(name,"باص","ب ا ص")
name = string.gsub(name,"سمكه","س م ك ه")
name = string.gsub(name,"ذباب","ذ ب ا ب")
name = string.gsub(name,"تلفاز","ت ل ف ا ز")
name = string.gsub(name,"حاسوب","ح ا س و ب")
name = string.gsub(name,"انترنيت","ا ن ت ر ن ي ت")
name = string.gsub(name,"ساحه","س ا ح ه")
name = string.gsub(name,"جسر","ج س ر")
Redis:set(TheMero.."Mero:Game:Monotonousss"..msg.chat_id,name)
return false
end
if text == "حجره" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '🪨', data = '/Hgr'}, {text = '📃', data = '/Warka'}, 
},
{
{text = '✂', data = '/Mukas'}, 
},
}
}
return send(msg.chat_id,msg.id,[[
⇜ اختر احد الازرار ( حجره ، ورقه ، مقص )
]],"md",false, false, false, false, reply_markup)
end
local Bot_Name = (Redis:get(TheMero.."Mero:Name:Bot") or "لويس")
if not Redis:get(TheMero.."Mero:Status:repleall") then
if text == 'صباح الخير' or text == 'صباحو' or text =='صباح النور' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'صباح الياسمين',
'صباح النور',
'صباح النور من النور نفسه',

}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'تصبحون على خير' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'نوم العافية يارب',
'نوم الهنا',
'احلام سعيدة',
'لا تنسى اذكارك بيب',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'جيت' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'منور',
'المطلوب ؟',
'ابلش',
'لا حول',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'باك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وولكمم',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'مساء الخير' or text == 'مساء خير' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'يامساء⁩ الـورد.',
'‏يا مسـاء الشـوق',
'مساء النور ',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'احس' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وش تحس',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'ملل' or text =='مليت' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'اي والله ملل',
'فعلاً الوضع ممل',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'طفش' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'مره',
'وش نسوي لك يعني',
'احسن',
'اكتب الالعاب والعب لا تشغلنا',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'حيو' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'يحيكك ربي',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'السلام عليكم' or text == 'سلام عليكم' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وعليكم السلام ورحمه الله وبركاته',
'وعليكم السلام منور/ه',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'مرحبا' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
' مُر حباً .',
'- لقد تمكَّنت من قلبي بأوَّلِ مرحباً',
'مراحب يا عيني',
'مراحب',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'فديتك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'فديت قلبك',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'حلو' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'عيونك يلبى',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'يزينك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'طالع لك طبعاً ',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'مسيو' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'مورات ي عيوني',
'لعد تشتاق',
'شوف مو مشتاق لك بس يلا مور',
' وكأن الكون اوصاني عليك.',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'سيو' or text == 'سيوو' or text == 'سيووو' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'واخيراً',
'لا تتأخر',
'مابغيت',
'مابغينا',
'انتبهلك',
'اذلف',
'بدري',
'بشتاق لك',
'تتركني لحالي',
'خذني معك',
'لا تروح وتخليني',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'باي' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'رَحلُت وَقَلبِي لا يُطيقُ فِراقَك',
'بشتاقلك',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'دوم' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'تدوم لي يارب',
'ياهلا',
'تدوم لاحبابك',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'كيف الحال' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'بخير ياعيوني',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'احبك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'‏وخر عني',
'صج والله',
'تعال خاص نغازل بعض اكثر',
'يخيي زوجوناا ',
'وانا بعد احبك',
'اثقل',
'لو انك نايم ابرك لك',
'طيب',
'روحها',
'احبك وكأن الكون اوصاني عليك.',
'بدينا كذب',
'اشوف صواريخ تطاير',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'لويس احبك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'ياقلبي',
'حياتي والله',
'ليتني مو بوته بس',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'لويس نتزوج' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'ليتك نايم',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'لويس تحبيني' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'لا',
'اي',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'عز' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'الله يعزك',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'لويس تتزوجيني' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'تخيل اتزوجك اذلف بس',
'لا ما اتزوج الاشكال هذي',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'سم' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'‏عدوك',
'سم الله عدوك ',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'بطلع' or text =='رح اطلع' or text =='رح بطلع' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'اذلف',
'ياريت تطلع',
'مع السلامه',
'سكر الباب وراك',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'كلزق' or text =='كل زق' or text =='كليزق' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'احشم ي ابني !',
'خذلك سنتوب',
'كلامك يعكس تربيتك ياحلو',
'ما اتخيل شكلك جوا فمي',
'والله عيب',
'هديها',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'مص' or text == 'مصي' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'استغفر الله واتوب اليه .',
'عيب',
'من معلمك يابابا',
'لا تعيدها',
'اخلاق',
'وصخ',
'!!!!!!!!!',
'وش هالاخلاق',
'اطردوه',
'حقيير',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'ماش' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'اي والله ماش',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'اطلق' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'ادري',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'احم' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'صحه ياقلبي',
'احم احم',
'صحه صحه',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'لبى' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'لباك الكون ومافيه ..',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'فخم' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'ولله ماغير عيونك فخمه .',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'تعبان' or text == 'تعبانه' or text == 'تعبانة' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وأنه خلف كل تعب راحة كبيرة ..',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'حزن' or text == 'حزين' or text == 'حزينه' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وانه وراء كل حزن ينتظرك فرح عظيم ..',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'الحب' or text == 'حب' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وما الحُب إلا رزق فلا تستعجلوه ولا تتصنعوه.',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'انتظرك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'كل شيء كان بانتظارك، حتى الإنتظار',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'تحبني' or text == 'تحبيني' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'اي لا',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'غبي' or text =='غبيه' or text =='غبية' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'الغبي ماغيرك ياهطف',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'ياعمري' or text =='يا عمري' or text =='يا عمري انتي' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'يا قلبي',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'اه' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وش تقول انت',
'اسلم',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'احبك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NameyBots = {
'اموت فيك',
'يروحها أكثر والله',
'اعشقك',
'‏لم يكن ضروريا أن نشيخ معا ولا أن نموت معا ، كان يكفي أن تهزنا لحظة حُبّ واحدة .',
'يا حظي فيك والله',
'اهيم بك',
'اكثر ي عمري ',
'طيب ',
'احلف ',
'رح نام بس ',
'ليتك ساكت بس ',
'انت متى تثقل',
'خفيف دم',
}
return send(msg.chat_id,msg.id, NameyBots[math.random(#NameyBots)],"md",true)  
end
end
if text == 'اكرهك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NameoBots = {
'وش تبيني اسويلك',
'نفس شعوري والله',
'ع اساس انا اموت فيك يعني ؟',
'اذلف بس',
'‏وإن عاد بي الزمن ألف مره اكرهك',
}
return send(msg.chat_id,msg.id, NameoBots[math.random(#NameoBots)],"md",true)  
end
end
if text == 'جبر' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamemBots = {
'وجودك الجبر',
'عيونك الجبر',
'انت الجبر يروحي',
'حروفك جبر قلبي',
'ادري',
}
return send(msg.chat_id,msg.id, NamemBots[math.random(#NamemBots)],"md",true)  
end
end
if text == 'منور' or text == 'منوره' or text == 'منورة' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamegBots = {
'بنور لويس',
'بنوري',
}
return send(msg.chat_id,msg.id, NamegBots[math.random(#NamegBots)],"md",true)  
end
end
if text == 'خاص' or text == 'خاصك' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamegBots = {
'بتحشون ف من ؟',
'اجي ؟',
'الخاص للرخاص يعيني',
'وانا؟',
'خذوني معاكم',
}
return send(msg.chat_id,msg.id, NamegBots[math.random(#NamegBots)],"md",true)  
end
end
if text == 'عيوني' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'ما لغِيرك في عيُوني ياعيوني جَاذبيه .',
'احب عيونك',
'لبى عيونك حبيبي',
'‏عيُونك مابعدها حُب يا حبيبي عيُونك ختّمت لِذة الاشياء فيني.',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'هاي' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'وعليكم السلام',
'هايات',
'اطلق هاي',
'هايات', 
'اطلق هاي',
'هاي وهايات ومرحبات',
'Hi',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'HAYSYSYYW728SU' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'شعندك ؟',
'عيون البوت',
'انت البوت',
'يارب صبرك',
'صعبة تقول لويس',
'نادني باسمي',
'شتبي',
'كُلي اذان صاغيه',
'قلب البوت',
'اشغلتنا قل لويس ',
'بوت فعينك',
'جعل مايقولها غيرك 🤍.',
'لاتكلمني اذا قلت اسمي ارد عليك',
'يهطف اسمي لويس.',
'بس تقول اسمي ارد عليك',
'هف',
'مريض انت نادني باسمي',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
if text == 'HSHSHSYSY27728S' then
if Redis:get(TheMero.."replayallbot"..msg.chat_id) then
local NamecBots = {
'سم حبيبي️',
'احلى من يناديني',
'آمرني',
'بعد عمر لويس',
'امسكوهه عني',
'بعد قلب لويس',
'‏امر ويش بغيت',
'ياهلا ومسهلا',
'خير شتبي',
'و بعدين معك',
'لبيه',
'عيون لويس',
'هااا',
'هلا ؟',
'ياخي شتبي/ن',
}
return send(msg.chat_id,msg.id, NamecBots[math.random(#NamecBots)],"md",true)  
end
end
end
if text== "طقس"  or text== "الطقس" then
return send(msg.chat_id,msg.id,"ٰ⇜ اكتب : طقس + اسم المدينة")
end
if text== "اذان"  or text== "الاذان" then
return send(msg.chat_id,msg.id,"ٰ⇜ اكتب : اذان + اسم المدينة")
end
if text== "الابراج"  or text== "ابراج"  and Redis:get(TheMero..'replayallbot'..msg.chat_id) then
return send(msg.chat_id,msg.id,"ٰ⇜ اكتب : برج + اسم برجك ")
end
if text== "همسه"  or text== "همسة"  and Redis:get(TheMero..'replayallbot'..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ اهلا بك عزيزي\n⇜ اكتب معرف البوت ثم الرساله ثم معرف الشخص\n⇜ مثال\n[@rigbot] مرحبا [@T_5_C]")
end
if text== "تحويل الصيغ" and Redis:get(TheMero..'replayallbot'..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ تحويلات الصيغ عن طريق ارسال الملف في القروب والرد على الملف مثال :\n_ ملصق الى صورة _ الرد (صوره) وبالعكس\n_ بصمه الى صوت _ الرد (صوت) وبالعكس \n_ فيديو الى صوت _ الرد (mp3)\n_ فيديو الى متحركه_الرد (متحركه)")
end
if text== "اضف سؤال كت" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
Redis:set(TheMero.."gamebot:Set:Manager:rd"..msg.sender_id.user_id..":"..msg.chat_id,true)
return send(msg.chat_id,msg.id,"⇜ ارسل السؤال الان ")
end
if text== "مسح سؤال كت" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
Redis:set(TheMero.."gamebot:Set:Manager:rdd"..msg.sender_id.user_id..":"..msg.chat_id,true)
return send(msg.chat_id,msg.id,"⇜ ارسل السؤال ")
end
if text== 'كت تويت' or text== 'كت' or text == "تويت" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then 
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."gamebot:List:Manager")
if #list ~= 0 then
local quschen = list[math.random(#list)]
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد اسم"
end
return send(msg_chat_id,msg_id,"「 "..news.." 」\n"..quschen.."","md",true)  
end
end
end
if text == 'اضف اسئله كت' then
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
local list = {
            "لو قالوا لك  تناول صنف واحد فقط من الطعام لمدة شهر .",
            "شخص تحب تستفزه ؟",
            "لو حلمت في شخص وصحيت وحصلت رساله من نفس الشخص . ارسل ايموجيي مثل ردة فعلك.",
            "هات صورة تحس إنك ابدعت بتصويرها.",
            "على إيش سهران ؟",
            "مين تتوقع يطالعك طول الوقت بدون ملل ؟",
            "وين جالس الحين ؟",
            "كم من عشرة تقيم يومك ؟",
            "أطول مدة نمت فيها كم ساعه ؟",
            "أجمل سنة ميلادية مرت عليك ؟",
            "أخر رسالة بالواتس جاتك من مين ؟",
            "ليه مانمت ؟",
            "تعتقد فيه أحد يراقبك ؟",
            "كم من عشره تعطي حظك ؟",
            "كلمه ماسكه معك الفترة هذي ؟",
            "شيء مستحيل تمل منه ؟",
            "متى تنام بالعادة ؟",
            "كم من عشرة جاهز للدراسة ؟",
            "منشن صديقك الفزعة",
            "يوم نفسك يرجع بكل تفاصيله ؟",
            "أجمل صورة بجوالك ؟",
            "ايش أغرب مكان قد صحتوا فيه؟",
            "اذا جاك خبر مفرح اول واحد تعلمه فيه مين ؟",
            "شيء لو يختفي تصير الحياة جميلة ؟",
            "كم من عشرة تشوف نفسك محظوظ ؟",
            "امدح نفسك بكلمة وحدة بس",
            "كلمة لأقرب شخص لقلبك ؟",
            "قوة الصداقة بالمدة ولا بالمواقف ؟",
            "تتابع مسلسلات ولا م تهتم ؟",
            "تاريخ يعني لك الكثير ؟",
            "كم عدد اللي معطيهم بلوك ؟",
            "من الغباء انك ؟",
            "اكثر شيء محتاجه الحين ؟",
            "ايش مسهرك ؟.",
            "حزين ولا مبسوط ؟",
            "تحب سوالف مين ؟",
            "كم من عشرة روتينك ممل ؟",
            "شيء مستحيل ترفضه ؟.",
            "كم من عشرة الإيجابية فيك ؟.",
            "تعتقد اشباهك الاربعين عايشين حياة حلوة ؟.",
            "مين جالس عندك ؟",
            "كم من عشرة تشوف نفسك انسان ناجح ؟",
            "شيء حظك فيه حلو ؟.",
            "كم من عشرة الصبر عندك ؟",
            "أخر مرة نزل عندكم مطر ؟",
            "اكثر مشاكلك بسبب ؟",
            "اكره شعور ممكن يحسه انسان ؟",
            "شخص تحب تنشبله ؟",
            "تنتظر شيء ؟",
            "جربت تسكن وحدك ؟",
            "اكثر لونين تحبهم مع بعض ؟",
            "متى تكره نفسك ؟",
            "كم من عشرة مروق ؟",
            "مدينة تتمنى تعيش وتستقر فيها طول عمرك ؟",
            "لو للحياة لون إيش بيكون لون حياتك ؟",
            "ممكن في يوم من الأيام تصبح شخص نباتي ؟.",
            "عمرك قابلت شخص يشبهك ؟",
            "اخر شخص تهاوشت معه ؟",
            "قبل ساعة ايش كنت تسوي ؟",
            "كلمة تقولها للي ببالك ؟",
            "أكثر شيء مضيع وقتك فيه ؟",
            "لو فتحتا خزانتك إيش اكثر لون بنشوف ؟",
            "قوة خارقة تتمنى تمتلكها ؟",
            "اكثر مصايبك مع مين ؟",
            "اذا زعلت إيش يرضيك ؟",
            "من النوع اللي تعترف بسرعه ولا تجحد ؟",
            "من الاشياء البسيطة اللي تسعدك ؟",
            "اخر مره بكيت",
            "ايموجي يعبر عن وضعك الحين ؟",
            "التاريخ المنتظر بالنسبة لك ؟",
            "كلنا بنسمعك إيش بتقول ؟",
            "مدينتك اللي ولدت فيها ؟",
            "عندك شخص مستحيل يمر يوم وما تكلمه ؟",
            "كلمة تقولها لنفسك ؟",
            "كم من عشرة متفائل بالمستقبل ؟",
            "ردك المعتاد اذا أحد ناداك ؟",
            "أكثر كلمه تسمعها من أمك ؟",
            "إيش تفضل عمل ميداني ولاعمل مكتبي ؟",
            "أكثر حيوان تحبه ؟",
            "اكثر مشاكلك بسبب ؟",
            "اكثر صوت تكرهه ؟",
            "اشياء تتمنى انها م تنتهي ؟",
            "اشياء صعب تتقبلها بسرعه ؟",
            "كم من عشرة راضي عن وضعك الحالي ؟",
            "متى م تقدر تمسك ضحكتك ؟",
            "اخر شخص قالك كلمة حلوة ؟",
            "اكثر شيء تحبه بنفسك ؟",
            "شيء نفسك يرجع ؟",
            "اغلب وقتك ضايع على ؟",
            "كيف تعرفت على اعز صديق لك ؟",
            "شايل هم شيء الفترة هذي ؟",
            "شخص م تحب تناقشه ؟",
            "تقييمك للديسكورد الفترة هذي ؟",
            "من النوع اللي اذا حطيت راسك على المخده نمت ولا تحتاج وقت ",
            "اهم برنامج عندك بالجوال الفترة هذي ؟",
            "كم تعطي نفسك من عشرة بتعاملك مع مشاكلك ؟",
            "اشياء تبين عليك اذا زعلت ؟",
            "كم من عشرة تحب الجلسة بالبيت ؟",
            "أطول مكالمة لك كم كانت مدتها ؟",
            "اسم تحس صاحبه فخم ؟",
            "تتكلم أكثر ولا تسمع ؟",
            "كم من عشرة تحب النوم ؟",
            "اخر شيء اكلته ؟",
            "أكثر مكان سافرت له بخيالك ؟",
            "كبرت وللحين اخاف من ؟",
            "كيف حالك وانت لحالك ؟",
            "أكثر اسم تحبه ؟.",
            "اكبر مبلغ ضاع منك ؟",
            "كلمة تختصر وضعك الحين ؟",
            "نظام نومك ...",
            "أكثر مكان تجلس فيه غير غرفتك ؟",
            "حرف تحبه ؟",
            "كم درجة الحرارة بمدينتك ؟",
            "تعطي اللي غلط بحقك فرصة ؟",
            "حياتك بكلمة ؟",
            "عندك مليون ريال بس مايمديك تشتري الا شيء  يبدأ بأول حرف من اسمك. وش بتشتري ؟",
            "اكثر شيء ساحب عليه الفترة هذي ؟",
            "شيء مستحيل تعطيه أحد ؟",
            "تنتظر شيء ؟",
            "ايش الوظيفة التي تستحق أعلى راتب؟",
            "كم مره تشحن جوالك باليوم ؟",
            "كم من عشرة عندك امل انك تصير مليونير ؟",
            "اشياء م تسويها غير اذا كنت مروق ؟",
            "لو بيدك تغير بالزمن, تقدمه ولا ترجعه ؟.",
            "دولة امنيتك تزورها ؟.",
            "اكثر  شخص فاهمك بالدنيا ؟",
            "تسامح بسرعة ؟.",
            "كم تحتاج وقت عشان تتعود على مكان جديد ؟",
            "كم من عشرة تحب الهدوء ؟",
            "تاريخ مهم جداً عندك ؟",
            "لعبة تشوف نفسك فنان فيها ؟",
            "أصعب قرار ممكن تتخذه ؟",
            "شيء نفسك تجربه ؟",
            "أشياء توترك ؟",
            "كم من عشرة تحب الاطفال ؟.",
            "اكثر شخص تتهاوش معه ؟",
            "لو خيروك بين يعطونك مليون أو راتب شهري متوسط بدون عمل مدى الحياة إيش تختار ؟",
            "الفلوس كل شيء ؟",
            "عشان تعيش مرتاح ؟",
            "ردة فعلك لو شفت شخص يبكي قدامك ؟",
            "كم مره أخذت عمره بـ رمضان ؟",
            "ردة فعلك لو مزح معك شخص م تعرفه ؟",
            "شيء تشوف نفسك مبدع فيه ؟",
            "ماذا تفعل الان ؟ ",
            "كم من عشرة تحب حياتك ؟.",
            "كم عدد الصور بجوالك ؟.",
            "كم عدد اصحابك المقربين منك كثير ؟.",
            "شكراً لأنك في حياتي ..تقولها لمين ؟",
            "كيف تتعامل مع الشخص اللي يرد متأخر دائماً ؟.",
            "اللوان داكنة  ولا فاتحه؟",
            "كيف تتعامل مع الاشخاص السلبيين ؟",
            "دايم الانطباع الاول عنك إنك شخص ؟",
            "شيء حلو صار لك اليوم ؟",
            "اول شيء يلفت انتباهك بشخص اول مرة تقابله ؟.",
            "جماد م تستغني عنه ؟.",
            "مع ، ضد : البكاء يقلل التوتر ..!",
            "إيش كان نكك ايام البيبي ؟.",
            "من النوع اللي تحفظ اسامي الناس  بسرعه ولا بس اشكالهم ؟.",
            "لو كان لك الحرية تغير اسمك إيش راح تختار اسم ؟",
            "اكثر شيء ضيعت عليه فلوسك ؟",
            "تعرف تمسك نفسك اذا عصبت ؟",
            "عمرك شاركت بمسابقة وربحت ؟",
            "إيش لون جوالك ؟.",
            "تعتقد إنك انسان لك فايدة ؟",
            "اذا احد سألك عن شيء م تعرفه تقول م اعرف ولا تتفلسف ؟",
            "أطول صداقة بينك وبين شخص كم مدتها ؟.",
            "تعرف تعبر عن الكلام اللي بداخلك ؟",
            "ردة فعلك اذا انحشرت بالنقاش ؟",
            "بالعادة برمضان تنحف ولاتسمن ؟",
            "تمارس رياضة معينة برمضان ؟",
            "عندك فوبيا من شيء ؟.",
            "الساعة كم اذان الفجر عندكم ؟",
            "شيء من الماضي للحين عندك ؟.",
            "عندك شخص انت حييل جريء معاه و ما تستحي منه ؟",
            "عمرك انتقمت من شخص؟",
            "اكثر شي يتعبك بالصيام العطش ولا الجوع ؟",
            "اكثر شخص يتصل عليك بالواتس ؟",
            "متى اخر مره جربت شعور ليتني سكت بس ؟",
            "اسم ولد وبنت تحسهم لايقين على بعض ؟.",
            "مسلسل ناوي تشوفه ؟",
            "عادي تتغير عشان شخص تحبه ؟",
            "شيء كل م تذكرته تستانس؟",
            "ايامك هالفترة عبارة عن ؟",
            "منشن شخصين تحسهم نفس الاسلوب او الشخصية ..",
            "اكثر شيء بتشتاق له اذا جاء رمضان ؟",
            "كم مره سامحت بقلبك بس عقلك رافض هالشيء ؟.",
            "مع او ضد .. البنت تحب انشاء المشاكل في العلاقات ..",
            "ماهي طريقتك في معاتبة شخص ؟",
            "لو كنت محتار بين شخص تحبه وشخص يحبك، من تختار؟",
            "الشيء الي تحسه يجذبك للشخص هو ؟",
            "اكثر شخص بينك وبينه تواصل دائم ؟",
            "اعلى نسبة جبتها بحياتك الدراسية ؟",
            "شايل هم شيء ؟ ",
            "إيش تفضل صح وخطأ ولا خيارات ؟",
            "اكثر ايموجي تستخدمه ؟",
            "جربت ينسحب جوالك فترة الاختبارات ؟.",
            "مادة دايم تجيب العيد فيها ؟",
            "وجبة ساحب عليها ؟",
            "تحب تتعرف على ناس جدد ولا مكتفي باللي عندك ؟",
            "مادة تكرها بس درجاتك عالية فيها ؟",
            "شيء بسيط قادر يعدل مزاجك بشكل سريع ؟",
            "اطول مدة جلسة تذاكر فيها بشكل متواصل كم ساعة ؟",
            "قبل امس الوقت هذا إيش كنت تسوي ؟",
            "منشن شخص لو م شفته تحس يومك ناقص ؟",
            "كلمتك اذا شفت حاجة حلوة ؟",
            "خوالك ولا عمامك ؟",
            "عادي تطلع وجوالك مافيه شحن كثير ؟",
            "شيء من صغرك ماتغير فيك ؟",
            "أصعب انتظار ؟",
            "أجمل بيت شعر سمعته ...",
            "مودك الحين ؟",
            "عندك صديق يحمل نفس اسمك ؟",
            "محادثة ولا مكالمة ؟",
            "كم مره يتقلب مزاجك باليوم ؟",
            "اكثر شخص يسوي فيك مقالب ؟",
            "مكان تبي تكون فيه الحين ؟.",
            "كم من عشرة تحب مهنة التدريس ؟",
            "شنو تتوقع بتصير بعد 10 سنين ؟ ",
            "متى تحب الطلعة ؟",
            "أغرب شي اشتهيت تأكله فجأة ؟",
            "اخر مره بكيت متى ؟",
            "اكثر شخص يقفل بوجهك اذا كلمك ؟",
            "كثر شخص يكرفك ؟",
            "تدخل بنقاش بموضوع ماتفهم فيه شيء ولا تسكت وتسمع بس ؟",
            "عمرك طحت بمكان عام ؟",
            "شخص يعرف عنك كل شي تقريباً ؟",
            "اكثر واحد يرسلك بالديسكورد ؟",
            "إيش اللي قدامك الحين ؟",
            "من النوع اللي تعتمد على غيرك ولا كل شي تسويه بنفسك ؟",
            "تقدر تعيش يوم كامل بدون نت ؟",
            "مع او ضد : الاعتراف بـ شيء في قلبك دام طويلاً ؟",
            "أبوك إيش يقرب لأمك ؟",
            "اكثر مدة جلستها بدون نت ؟",
            "لو رجعناك خمس سنين هل كنت تتوقع ان حياتك بتكون نفس وضعك الحين ؟",
            "تتقبل النصيحة من أي أحد ؟",
            "متى لازم تقول لا ؟",
            "أكثر ماده تحبها دراسياً والسبب؟.",
            "إيش نوع قهوتك المفضلة ؟",
            "شخص تشوفه بشكل يومي غير اهلك ؟",
            "شخص تحب ابتسامتة ؟",
            "من الاشياء اللي تجيب لك الصداع ؟",
            "وش تحب تسوي وقت فضاوتك ؟.",
            "كم تعطي نفسك من عشرة بالجدية بحياتك ",
            "أكثر شي يعتمدون عليك فيه ؟",
            "اكثر صفة عندك ؟",
            "كيف تعبر عن عصبيتك ؟",
            "كم داخل سيرفر فالديسكورد ؟",
            "حصلت الشخص اللي يفهمك ولا باقي ؟",
            "تفضل .. العيون الناعسة ... العيون الواسعة ؟",
            "اشياء تغيرت تظرتك لها",
            "الرقم السري حق جوالك ...",
            "لو قررت تقفل جوالك يوم كامل مين تتوقع أنه يفتقدك ؟",
            "اخر هوشه جلدت ولا انجلدت ؟",
            "نصيحه صغيرة من واقع تجربتّك؟.",
            "شخص يكلمك بشكل يومي ؟",
            "أسم وانطباعك عنه ؟",
            "العصر إيش كنت تسوي ؟",
            "كم من عشرة تعطي اهتمامك بدراستك أو عملك ؟",
            "كيف تفرغ غضبك بالعادة ؟",
            "أطول مدة قضيتها بعيد عن أهلك ؟",
            "شخص مستحيل تمسك ضحكتك معاه؟",
            "حاجة دايم تضيع منك ؟",
            "تجامل احد على حساب مصلحتك ؟",
            "كم لك فـ الديسكورد ؟",
            "اخر شخص تهاوشت معه مين ؟",
            "اكثر شيء تكره تنتظره ؟",
            "اخر مطعم اكلت منه ؟",
            "اكثر شيء تحبه بـ شكلك ؟",
            "تنام بـ اي مكان ، ولا بس غرفتك ؟",
            "اكتب اول كلمة جات في بالك الحين ؟",
            "تهمك التفاصيل ولا الزبدة من الموضوع ؟",
            "شيء واحد .. م عاد يهمك كثر اول ؟",
            "كم تقييمك لـ طبخك من 10 ، ولا م تطبخ ؟",
            "اتفه شيء ارسلوك عشانه ؟",
            "فن تحبه كثير ؟",
            "اكثر سوالفك عن ...؟",
            "صفة موجودة في جميع افراد عائلتك ؟",
            "شخص م تقدر تكذب عليه ؟",
            "كم من 10 تحس بـ الطفش ؟",
            "من النوع الي تجيك الردود القوية بعد الهوشة ولا فـ وقتها ؟",
            "تحب تجرب الاشياء الجديدة ، ولا تنتظر الناس يجربونها اول ؟",
            "وش اغبى شيء سويته ؟",
            "اكثر كلمة الناس تقولها عن شخصيتك ؟",
            "مراقبة شخص تركته .. فضول ولا بقايا مشاعر ؟",
            "برنامج كرهته الفترة هاذي",
            "مشهور ، او مشهورة .. يشبهونك فيه",
            "بالغالب وش تسوي فـ الويكند ؟",
            "وش اسم الحي الي ساكن فيه ؟",
            "اكثر شيء تخاف منه ؟",
            "عاده لاتستطيع تركها ؟ ",
            "كم من الوقت تحتاج عشان تصحصح من بعد م صحيت من النوم ؟",
            "اذا حسيت بـ غيرة تتكلم ولا تسكت ؟",
            "مع او ضد ... اقاربك يعرفون عن حساباتك في برامج التواصل ؟",
            "اخر مره سافرت بالطائرة والى وين؟",
            "وش اليوم الي تكرف فيه كثير ؟",
            "تفضل .. الاعمال الحرة ولا الوظيفة ؟",
            "حاجة تشوف نفسك مبدع فيها ؟",
            "ماركتك المفضلة ؟",
            "منشن ... اكثر شخص تثق فيه ؟",
            "اذا انسجنت وش تتوقع بتكون التهمة الي عليك ؟",
            "تعطي الناس فرصة تتقرب منك ؟",
            "منشن .. الشخص الي يستحق تدخل الديسكورد عشانه ..",
            "متى اخر مره نمت اكثر من 12 ساعة ؟",
            "رائحة عطر مدمن عليها ..",
            "وش تحس انك تحتاج الفترة هاذي ؟",
            "كم من 10 البرود فيك ؟",
            "وش اكثر فاكهة تحبها ؟",
            "اصعب وظيفة في نظرك ؟",
            "شيء بسيط قادر على حل كل مشاكلك ..",
            "اذا جلست عند ناس م تعرفهم .. تكتفي بالسكوت ، ولا تتكلم معهم ؟",
            "تتحمل المزح الثقيل ؟",
            "من النوع الي تنام فـ طريق السفر ؟",
            "لو شلنا من طولك 100 كم يبقى من طولك ؟",
            "موقفك من شخص أخفى عنك حقيقة ما، تخوفًا من خسارتك؟ ",
            "اكثر شخص ينرفزك الي ؟",
            "تعرف تتصرف في المواقف العصبة ؟",
            "متى حسيت انك مختلف عن الي غيرك ؟",
            "اصعب مرحلة دراسية مرت عليك ؟",
            "سويت شيء بالحياة وانت مو مقتنع فيه ؟",
            "اخر مره ضربوك فيها ... ووش كان السبب ؟",
            "من الاشياء الي تجيب لك الصداع ؟",
            "مين اول شخص تكلمه اذا طحت بـ مصيبة ؟",
            "مع او ضد : النوم افضل حل لـ مشاكل الحياة ...",
            "تجامل ولا صريح ؟",
            "تفضل المواد الي تعتمد على الحفظ ولا الفهم ؟",
            "صفة تخليك تكره الشخص مهما كان قربه منك ؟",
            "جربت احد يعطيك بلوك وانت تكتب له ؟",
            "تهتم بـ معرفة تاريخ ميلاد الي تحبهم ؟",
            "فيه شيء م تحب تطلبه حتى لو كنت محتاجة ؟",
            "دائما قوة الصداقة بـ ... ؟",
            "اخر شخص قالك كلمة حلوة ..",
            "كم من 10 الي تتوقعه يصير ؟",
            "اذا كنت بنقاش مع شخص وطلع الحق معه تعترف له ولا تصر على كلامك ؟",
            "فيه شخص تكرهه بشكل كبير ؟ ولك جرأة تمنشن اسمه ؟",
            "كيف الجو عندكم اليوم ؟",
            "ترتيبك بالعائلة ؟",
            "تسمع شيلات ؟",
            "تفضل السفر فـ الشتاء ولا الصيف ؟",
            "مع او ضد : الهدية بـ معناها وليس بـ قيمتها",
            "عندك صحبة من اشخاص خارج دولتك",
            "عندك صحبة من اشخاص خارج دولتك ؟",
            "تحب اصوات النساء فـ الاغاني ولا الرجال",
            "وش اول جوال شريته ؟",
            "وش النوع الي تحبه ف الافلام ؟",
            "اكثر مكان تحب تجلس فيه فالبيت ؟",
            "صفة قليل تحصلها فـ الناس حالياً ؟",
            "من النوع الي تعترف ولا تجحد ؟",
            "اول شخص تكلمه اذا صحيت من النوم ؟",
            "وش اجمل لهجة عرببية بالنسبة لك ؟",
            "اخر اتصال من مين كان ؟",
            "اجمل مدينة بدولتك ؟",
            "شاعرك المفضل ؟",
            "كم مره تشحن جوالك باليوم",
            "لو كنت مؤلف كتاب .. وش راح يكون اسمه ؟",
            "اطول مدة قضيتها بدون اكل ..",
            "كم من 10 نسبة الكسل فيك هالايام ؟",
            "نومك خفيف ولا ثقيل ؟",
            "كم من عشرة تشوف صوتك حلو ؟",
            "تجيك الضحكة بوقت غلط ؟",
            "تفضل التسوق من الانترنت ، ولا الواقع ؟",
            "اغرب اسم مر عليك ؟",
            "وش رقمك المفضل ؟",
            "شيء تبيه يصير الحين ...",
            "شاي ولا قهوة ؟",
            "صفة يشوفونها الناس سيئة ، وانت تشوفها كويسه",
            "لون تكرهه ...",
            "وظيفة تحسها لايقة عليك ...",
            "كم من 10 كتابتك بالقلم حلوة ؟",
            "اكلة ادمنتها الفترة ذي ...",
            "اجمل مرحلة دراسية مرت عليك ..",
            "اكثر شيء تكرهه فالديسكورد ..",
            "شيء مستحيل انك تاكله ...",
            "وش رايك بالي يقرأ ولا يرد ؟",
            "اسمك بدون اول حرفين ..",
            "متى تكره الطلعة ؟",
            "شخص من عائلتك يشبهونك فيه ...",
            "اكثر وقت تحب تنام فيه ...",
            "تنتظر احد يجيك ؟",
            "اسمك غريب ولا موجود منه كثير ؟",
            "وش الشيء الي يكرهه اقرب صاحب لك ؟",
            "كم من 10 حبك للكتب ؟",
            "جربت الشهرة او تتمناها ؟",
            "مين اقرب شخص لك بالعائلة ؟",
            "شيء جميل صار لك اليوم ؟",
            "كلمتك اذا احد حشرك بالنقاش ...",
            "اعمال يدوية نفسك تتقنها . ",
            "وش الي يغلب عليك دائما .. قلبك ولا عقلك ؟",
            "صفة تحمد الله انها مو موجودة في اصحابك ...",
            "كم وجبة تاكل فاليوم الفترة هاذي ؟",
            "جربت دموع الفرح ؟ وش كان السبب ؟",
            "لو فقط مسموح شخص واحد تتابعه فالسناب مين بيكون ؟",
            "‏لو حطوك بمستشفى المجانين كيف تقنعهم إنك مو مجنون ؟.",
            "اكثر شيء تحبه فالشتاء ...",
            "شيء ودك تتركه ...",
            "كم تعطي نفسك من 10 فاللغة الانجليزية ؟",
            "شخص فرحتك مرتبطة فيه ...",
            "اكتب اسم .. واكتب كيف تحس بيكون شكله ...",
            "متى اخر مره قلت ليتني سكت ؟",
            "ممكن تكره احد بدون سبب ؟",
            "اكثر وقت باليوم تحبه ...",
            "اكثر شيء حظك سيء فيه ...",
            "متى صحيت ؟",
            "كلمة صعب تقولها وثقيلة عليك ...",
            "ردك الدائم على الكلام الحلو ...",
            "سؤال دايم تتهرب من الاجابة عليه ...",
            "مين الشخص اللي مستعد تأخذ حزنه بس م تشوفه حزين ؟.",
            "جربت تروح اختبار بدون م تذاكر ؟",
            "كم مرة غشيت ف الاختبارات ؟",
            "وش اسم اول شخص تعرفت عليه فالديسكورد ؟",
            "تعطي فرصة ثانية للشخص الي كسرك ؟",
            "لو احتاج الشخص الي كسرك مساعدة بتوقف معه ؟",
            "@منشن... شخص ودك تطرده من السيرفر ...",
            "دعاء له اثر إبجابي في حياتك ...",
            "قل حقيقه عنك ؟",
            "انسان م تحب تتعامل معه ابد",
            "اشياء اذا سويتها لشخص تدل على انك تحبه كثير ؟",
            "الانتقاد الكثير يغيرك للافضل ولا يحطمك ويخليك للأسوأ ؟",
            "كيف تعرف اذا هذا الشخص يكذب ولا لا ؟",
            "مع او ضد : العتاب على قدر المحبة ...",
            "شيء عندك اهم من الناس",
            "تتفاعل مع الاشياء اللي تصير بالمجتمع ولا ماتهتم ؟.",
            "وش الشيء الحلو الي يميزك عن غيرك ؟",
            "كذبة كنت تصدقها وانت صغير ..",
            "@منشن .. شخص تخاف منه اذا عصب ...",
            "كلمة بـ لهجتك تحس م احد بيعرفها ...",
            "كمل ... انا من الاشخاص الي ...",
            "تراقب احد بالديسكورد ؟",
            "كيف تعرف ان هالشخص يحبك ؟",
            "هواية او تجربة كان ودك تستمر و تركتها ؟",
            "الديسكورد اشغلك عن حياتك الواقعية ؟",
            "اكمل ... تستمر علاقتك بالشخص اذا كان ...",
            "لو احد قالك اكرهك وش بتقول له ؟",
            "مع او ضد : عامل الناس كما يعاملوك ؟",
            "ارسل اخر صورة فـ الالبوم ...",
            "الصق وارسل اخر شيء نسخته ...",
            "ماهي اخر وجبة اكلتها ",
            "اكثر شيء تحس انه مات ف مجتمعنا",
            "برأيك ماهو افضل انتقام ...",
            "اكثر ريحة تجيب راسك ...",
            "شعور ودك يموت ...",
            "عمرك فضفضت لـ شخص وندمت ؟",
            "تقدر تتحمل عيوب شخص تحبه ؟",
            "يكبر الشخص ف عيونك لما ...",
            "وش تقول للشخص الي معك دائماً ف وقت ضيقتك ؟",
            "مقولة او حكمة تمشي عليها ...",
            "منشن ... شخص اذا وضعه على الجرح يلتهب زيادة",
            "منشن ... شخص يعجبك كلامه و اسلوبه ...",
            "لو السرقة حلال ... وش اول شيء بتسرقه ؟",
            "مع او ضد : المرأة تحتاج لرجل يقودها ويرشدها ...",
            "مع او ضد : لو دخل الشك ف اي علاقة ستنتهي ...",
            "منشن... اي شخص واوصفه بـ كلام بسيط ...",
            "مع او ضد : قلة العلاقات راحة ...",
            "لو خيروك : تعض لسانك بالغلط ، ولا يسكر على صبعك الباب؟",
            "كلمة غريبه و معناها ...",
            "نصيحة تقدمها للشخص الثرثار ...",
            "مع او ضد :  مساعدة الزوجة في اعمال المنزل مهما كانت ...",
            "منشن... شخص يجيك فضول تشوف وجهه ...",
            "كلمة لـ شخص عزيز عليك ...",
            "اكثر كذبة تقولها ...",
            "معروف عند اهلك انك ...",
            "وش اول طريقة تتبعها اذا جيت تراضي شخص",
            "ع او ضد : ما تعرف قيمة الشخص اذا فقدته ...",
            "تحب تختار ملابسك بنفسك ولا تحب احد يختار معك ...",
            "وش اكثر شيء انجلدت بسببه وانت صغير ؟",
            "فـ اي برنامج كنت قبل تجي الديسكورد ؟",
            "تنسد نفسك عن الاكل لو زعلت ؟",
            "وش الشيء الي تطلع حرتك فيه و زعلت ؟",
            "مع او ضد : الصحبة تغني عن الحب ... ",
            "منشن... اخر شخص خلاك تبتسم",
            "لو نطق قلبك ماذا سيقول ...",
            "ماذا يوجد على يسارك حالياً ؟",
            "مع او ضد : الشخص الي يثق بسرعة غبي ...",
            "شخصية كرتونية تأثرت فيها وانت صغير ...",
            "مع او ضد : الاهتمام الزائد يضايق",
            "لو خيروك : تتزوج ولا تكمل دراستك ...",
            "منشن... لو بتختار شخص تفضفض له مين بيكون ؟",
            "كمل : مهما كبرت بخاف من ....",
            "اخر عيدية جاتك وش كانت ...",
            "وش حذفت من قاموس حياتك ...",
            "شيء تتمنى م ينتهي ...",
            "اكره شعور ممكن يحس فيه الانسان هو ...",
            "مع او ضد : يسقط جمال المراة بسبب قبح لسانها ...",
            "ماهي الخسارة في نظرك ...",
            "لو المطعم يقدم الوجبه على حسب شكلك وش راح تكون وجبتك ؟",
            "مع او ضد : يموت الحب لو طال الغياب",
            "وش الشيء الي يحبه اغلب الناس وانت م تحبه ..",
            "تحدث عن نفسك ؟",
            "اقوى جملة عتاب وصلتك",
            "على ماذا ندمت ؟",
            "اخر مرة انضربت فيها من احد اهلك ، ولماذا ؟",
            "افضل طريقة تراضي فيها شخص قريب منك",
            "لو بإمكانك تقابل شخص من الديسكورد مين بيكون ؟",
            "كمل : كذاب من يقول ان ...",
            "طبعك صريح ولا تجامل ؟",
            "مين اقرب لك ؟ اهل امك ، اهل ابوك  ...",
            "وش لون عيونك ؟",
            "مع او ضد : الرجال اكثر حقداً من النساء",
            "مع او ضد : ينحب الشخص من اهتمامه",
            "@منشن: شخص تقوله اشتقت لك",
            "بصراحة : تحب تفضفض وقت زعلك ، ولا تنعزل ؟",
            "مع او ضد : حبيبك يطلب منك حذف اصحابك بحكم الغيرة",
            "متى تحس بـ شعور حلو ؟",
            "لو حياتك عبارة عن كتاب .. وش بيكون اسمه ؟",
            "@منشن: شخص واسأله سؤال ...",
            "كم مره سويت نفسك غبي وانت فاهم ،  ومع مين ؟",
            "اكتب شطر من اغنية او قصيدة جا فـ بالك",
            "كم عدد الاطفال عندكم فالبيت ؟",
            "@منشن : شخص وعطه وظيفة تحس تناسبه",
            "اخر مكالمة فـ الخاص كانت مع مين ؟",
            "عمرك ضحيت باشياء لاجل شخص م يسوى ؟",
            "كمل : حلو يومك بـ وجود ...",
            "مع او ضد : المرأة القوية هي اكثر انسانه انكسرت",
            "نصيحة تقدمها للغارقين فالحب ...",
            "مبدأ تعتمد عليه فـ حياتك",
            "ترد بالمثل على الشخص لو قذفك ؟",
            "شيء مهما حطيت فيه فلوس بتكون مبسوط",
            "@منشن: اكثر شخص يفهمك",
            "تاريخ ميلادك + هدية بخاطرك تجيك",
            "كم كان عمرك لما اخذت اول جوال ؟",
            "عمرك كتبت كلام كثير بعدين مسحته ، مع مين كان؟",
            "برأيك : وش اكثر شيء يرضي البنت الزعلانه ؟",
            "مساحة فارغة (..............) اكتب اي شيء تبين",
            "تترك احد عشان ماضيه سيء ؟",
            "تهتم بالابراج ، واذا تهتم وش برجك ؟",
            "لو ستبدأ حياتك من جديد ، وش راح تغير بـ نفسك ؟",
            "تتوقع فيه احد حاقد عليك ويكرهك ؟",
            "وش يقولون لك لما تغني ؟",
            "مين المغني المفضل عندك ؟",
            "ميزة ودك يضيفها البرنامج",
            "وش الي مستحيل يكون لك اهتمام فيه ؟",
            "البنت : تتزوجين احد اصغر منك ",
            "الرجل : تتزوج وحده اكبر منك",
            "احقر الناس هو من ...",
            "البنت : وش تتمنين تكون وظيفة زوجك ",
            "الرجل : وش تتمنى وظيفة زوجتك",
            "برأيك : هل الانتقام من الشخص الذي اخطأ بحقك راحة ؟",
            "اهم شيء يكون معك فـ كل طلعاتك ؟",
            "وش الخدمة الالكترونية الي تتمنى تصير ؟",
            "كلمة تخليك تلبي الطلب حق الشخص بدون تفكير",
            "وش الفايدة الي اخذتها من الديسكورد ؟",
            "مع ام ضد : غيرة البنات حب تملك وانانية",
            "هل سبق ان ندمت انك رفضت شيء ، وش كان ؟",
            "تشوف انك قادر على تحمل المسؤولية ؟",
            "مع او ضد : الناس يفضلون الصداقة وعندما يأتي الحب يتركون الصداقة",
            "اعلى نسبة جبتها ف حياتك الدراسية",
            "تحب احد يتدخل ف امورك الشخصية  ؟",
            "لو واحد يتدخل ف امورك وانت م طلبت منه وش بتقوله ؟",
            "تاخذ بنصيحة  الاهل ام من الاصحاب ؟",
            "فيه شيء م تقدر تسيطر عليه ؟",
            "@منشن : شخص تحب سوالفه",
            "وش الكذبة المعتادة الي تسويها لو بتقفل من احد ؟",
            "@منشن: الشخص الي عادي تقوله اسرارك",
            "لو زعلت بقوة وش بيرضيك ؟",
            "كلمة تقولها لـ بعض الاشخاص في حياتك",
            "ندمت انك اعترف بمشاعرك لـ شخص",
            "وش الاكلة المفضلة عندك ؟",
            "وش تتخيل يصير معك فـ المستقبل ؟",
            "اسم الطف شخص مر عليك الكترونياً",
            "مع او ضد : الاستقرار النفسي اهم استقرار",
            "مع او ضد : كل شيء راح يتعوض",
            "برأيك : وش الشيء الي مستحيل يتعوض ؟",
            "تفضل : الدجاج ، اللحم ، السمك",
            "تفضل : الصباح ، الليل",
            "كمل : النفس تميل لـ ...",
            "عندك القوة انك تبين اعجابك لـ شخص ؟",
            "مع او ضد : الرد المتأخر يهدم العلاقات",
            "مشروبك المفضل ...",
            "اقوى كذبة كذبتها على اهلك",
            "@منشن : شخص واكتب شعور نفسك يجربه",
            "وش ردة فعلك من الشخص الي يرد عليك بعد ايام او ساعات ...",
            "كيف تعبر عن عصبيتك ؟",
            "عمرك بكيت على شخص مات في مسلسل ؟",
            "تتأثر بالمسلسلات او الافلام وتتضايق معهم ؟",
            "لو خيروك : بين شخص تحبه وشخص يحبك",
            "اقسى نهاية عندك ...",
            "مع او ضد : كل م زاد المال في الزواج زادت السعادة",
            "لو سمح لك بسرقة شيء ويكون ملك لك .. ماذا ستسرق ؟",
            "تقدر تنام وخاطرك مكسور ؟",
            "برأيك : اقرب لهجة عربية قريبة للفصحى ؟",
            "مر عليك شخص ف حياتك مستحيل انك تسامحه ",
            "عندك صاحب له معك اكثر من 5 سنين ؟",
            "وش معنى اسمك ؟",
            "عندك الصاحب الي تقول للناس اتحداكم تفرقونا ؟",
            "تقييمك لـ صوتك ف الغناء من 10",
            "كم طولك ؟",
            "كم وزنك ؟",
            "وش طموحك بالحياة ؟",
            "لو بيدك توقف شيء يصير ، وش راح توقف ؟",
            "وش اسم قبيلتك ؟",
            "اقرب فعل لقلبك ؟",
            "وش نوع جوالك ؟",
            "وش المطعم المفضل عندك ؟",
            "مين الشخص الي محلي حياتك ؟",
            "انا مدمن على ...",
            "مع او ضد : الصدق هو سر استمرار العلاقات فترة طويلة",
            "تكون اجمل شخص اذا ...",
            "شكلك يعطي لأي جنسية ؟",
            "وش اكثر دولة تحب الشعب حقها ؟",
            "اول بيت تزوره فالعيد ..",
            "جمال المراة يكمن في ...",
            "مشهور تعجبك سناباته ..",
            "مشهور تكرهه",
            "يكفيك عطر واحد ولا تحب تحط اكثر من عطر ؟",
            "مرة جاك احد بيذكرك فيه وانت ناسي ؟",
            "لو احد بيذكرك فيه وانت ناسي بتسلك له ؟",
            "اغنيتك المفضلة ...",
            "مع او ضد : لو م اخذت شيء معك وقت زيارة احد انت مقصر",
            "يهمك ملابسك تكون ماركة ؟",
            "مع او ضد : او اهتزت مكانة الشخص مستيحل ترجع",
            "لو رجع لك شخص تعرفه بعد علاقته بالخيانة ، راح ترجع نفس اول ؟",
            "صفة لا تتمنى ان تكون فـ عيالك",
            "وش اسم قروبك انت واصحابك المقربين ؟",
            "وش اسم قروب عائلتك فالواتس اب ؟",
            "مع او ضد : تكون الزوجة عندما تشترط خادمة في العقد سيئة",
            "لعبة ندمت انك لعبتها ...",
            "مع او ضد : يمكن للبنت تغيير رأي الرجل بسهولة",
            "كلمة او عبارة مستحيل تنساها",
            "ارسل اكثر ايموجي تحبه",
            "شيء تتمنى يتحقق",
            "مع او ضد : الدنيا لم تتغير ، بل النفوس التي تغيرت",
            "وش جمع اسمك ؟",
            "كلمة لـ شخص زعلان منك ...",
            "عادة غريبة تسويها ..",
            "تحب ريحة الحناء ؟",
            "نومك : ثقيل ولا خفيف",
            "اكثر شيء يرفع ضغطك",
            "اكتب تاريخ مستحيل تنساه",
            "لو حظك يباع ، بكم بيكون ؟",
            "@منشن : شخص تشوف انه يجذبك",
            "البنت : عادي تحضنين اخوك ؟",
            "الولد : عادي تحضن ابوك ؟",
            "كلمة تحب تسمعها حتى لو كنت زعلان",
            "قوة الاستيعاب عندك من 10",
            "افضل نوع عطر استخدمته",
            "وش بتختار اسم لأول مولود لك ؟",
            "متى تصير نفسية ؟",
            "كيف ينطق الطفل اسمك ؟",
            "تشوف نفسك شخص عاطفي ولا علاقني ؟",
            "متى لازم تقول لا ؟",
            "تحب توجه الكلام عن طريق ( الكتابة ، الصوت )",
            "مين اقرب لك : (خوالك ، عمامك )",
            "تحب تتعرف على ناس جديدة ولا اكتفيت بالي عندك ؟",
            "شيء كل م تذكرته تبتسم ...",
            "كم قروب واتس داخل ؟",
            "كم سيرفر داخل فالديسكورد ؟",
            "مع او ضد : المسامحة بعد الخيانة ...",
            "وش الامنية الي ودك تتحقق ؟",
            "كيف تتصرف مع الشخص الفضولي ؟",
            "الرجل : متى تفقد البنت انوثتها",
            "ماهي اسباب نهاية العلاقات ؟",
            "@منشن : شخص ودك تعطيه كتم ",
            "مين الي تحب يكون مبتسم دائما",
            "حصلت الشخص الي يفهمك ولا باقي ؟",
            "كم تحتاج وقت عشان تصحصح من نومك ؟",
            "كيف تعالج الغيرة الزائدة ؟",
            "مع او ضد : كل شيء حلو يكون فالبداية فقط",
            "اطول مدة قضيتها بعيد عن اهلك",
            "شيء دايم يضيع منك",
            "اغنية ناشبه ف مخك",
            "رسالة للناس الي بيدخلون حياتك",
            "جملة او كلمة تكررها",
            "اكثر اغنية تكرهها ؟",
            "صوت مغني م تحبه",
            "مع او ضد : الغيرة بين الاصدقاء",
            "اكثر وقت تحب تنام فيه",
            "وش اثقل مشوار ممكن تسويه ؟",
            "اقرب شخص لك بالعائلة",
            "اخر مكان سافرت له",
            "مع او ضد : حنا اكثر الناس عندنا حكم لكن م نطبقها",
            "مع و ضد : العتاب اكثر من مره دليل على ان الشخص م يقدرك",
            "كم مشاهداتك باسناب؟ ",
            "مع او ضد : اكثر من في الديسكورد أُناس يتصنعون",
            "شيء نفسك تعيشه من جديد",
            "كلمة تحسسك بالامان",
            "كم تعطي نفسك من 10 فـ تعاملك مع مشاكلك",
            "مع او ضد : اكثر من يحلون مشاكل الناس ، هم اكثر الناس لديهم مشاكل",
            "مع او ضد : علاج الخطأ بالخطأ في زمننا هذا هو الحل",
            "وش اكثر شيء يضيع منك ؟",
            "مع او ضد : السفر يصلح ما افسده الدهر",
            "جربت شعور حب من طرف واحد ؟",
            "ما ترد الطلعة لو كانت الى ...",
            "كم لك في الديسكورد ؟",
            "شيء كل ما تتذكره تنبسط",
            "اكتب كلام ودك الناس يطبقونه ( ......... )",
            "كيف تعالج الغيرة الزائدة ؟",
            "مع او ضد : من حق الشخص ما يبدا بالرسالة لانه مو متعود",
            "عندك شخص يكلمك يومياً ، تستحي تقوله لا ترسل",
            "مع او ضد : من يهتم بك لا تخسره قد لا تعيد لك الحياة شخصاً مثله",
            "اصعب مرحلة دراسية مرت عليك",
            "هل انت مدمن تفكير ؟",
            "تشوف الي يفكر كثير نفسية ؟",
            "من النوع الي تخطط لامورك ولا تحب تغامر",
            "اكثر وقت تحب النوم فيه",
            "شيء ودك الناس تتركه",
            "اسم اول صديق لك",
            "مع او ضد : اهتمام الشخص بك يجعلك تحب وجوده",
            "@منشن : شخص واكتب صفة م تحبها فيه",
            "اخر مكان سافرت له وين ؟",
            "@منشن : شخص تحس انه نكبه",
            "وش اكثر سؤال يدور في بالك ؟",
            "شيء م تحب احد يشاركك فيه",
            "مع او ضد : الحب بدايته اهتمام",
            "مع او ضد : دائما يكون اهتمامنا مع الانسان الخطأ",
            "لو خيروك : ( قهوة عربية - قهوة تركية )",
            "تحب الشخص ( العفوي - الثقيل - الفلة )",
            "مع او ضد : المراة الجميلة لا تتدحث عن جمالها",
            "اذا جاك كلام ولا عرفت ترد عليه وش بتسوي ؟",
            "@منشن : شخص تشوفه نفسية",
            "تحب المكالمات الطويلة ؟",
            "@منشن : شخص تحس الوقت يطير معه",
            "تنتظر اتصال من مين ؟",
            "زمن تتمنى لو انك انولدت فيه",
            "تعاني من التفكير قبل النوم ؟",
            "مع او ضد : اكثر وقت يفكر فيه الشخص وقت النوم",
            "@منشن : شخص ودك تسافر معه",
            "مرتبطة سعادتك مع سعادة مين ؟",
            "تعتمد على غيرك كثير ؟",
            "كم نسبة الغيرة عندك من 10",
            "مع او ضد : الحقير من وجد البديل ونكر الجميل",
            "مرة سويت جميل و نكره شخص ؟",
            "وش اخر شيء اكلته امس ؟",
            "مع او ضد : ثق بـ نفسك فلا احد يستحق ان تثق به",
            "انت بنفسك تصنع للاشياء قيمة ؟",
            "اخر كلمة تقولها لو خلصت كلامك ؟",
            "كيف ينطق الطفل اسمك ؟",
            "تعتبر نفسك شخص عاطفي ولا عقلاني ؟",
            "مع او ضد : الانتقام افضل وسيلة للراحة",
            "اسف تقولها لمين ؟",
            "هات صفة بأول حرف من اسمك ",
            "شخص ودك م تعرفت عليه ؟",
            "اخر رسالة ديسكورد مع مين؟ ",
            "شخص ما يرد لك طلب ؟",
            "شخص مهما طلب مستحيل ترده ...",
            "وش ناقصك الحين ؟",
            "برايك السهر ممتع ، ولا مُتعب ؟ ",
            "اصدقاء الالكترون ، ولا الواقع ؟ ",
            "حط @منشن .... لـ شخص مُتنمر من الدرجة الاولى",
            "لو كنت شخصية كرتونية اي شخصية بتكون؟",
            "ردك لو احد غلط بحقك واعتذر لك ؟ ",
            "ردك على من يدور الزعل ؟",
            "نشوف نفسك تعرف تقنع الاشخاص ولا لا",
            "اكتب ثلاث اشياء تحبها ...",
            "شخص تحس السيرفر بدونه م يسوى ",
            "اخر شخص عصبت عليه ",
            "ما معنى اسمك ؟",
            "كملها ... انا عُمري ما ( .......)",
            "جربت تحب احد من طرف واحد؟",
            "لو ضاقت فيك الدنيا ... لـ مين تروح ؟",
            "لو كنت ممثل وش تتوقع الدور الي بتتقنه؟ ",
            "خُلق يجذبك فالاخرين ",
            "مهارة تتمنى تتقنها ",
            "وش رايك بالشخص الي يعطي شعور لـ شخصين؟",
            "برأيك الفضفضه .. . نهايتها (راحة ، ندم)",
            "لو التمني يصير حقيقة ... وش بتكون امنيتك ",
            "هل بـ مرة فكرت تنتحر ؟ ",
            "اكبر كذبة كذبتها على مين ؟ ووش كانت..؟",
            "شخصية تقهرك ",
            "وجه كلمه لشخصك ؟",
            "ذكرى جميلة ودك تتكرر ",
            "اول شيء تسويه لما تطفش ",
            "برأيك / ماهو اخطر عدو للانسان ",
            "وش ابشع شعور مريت فيه ",
            "لما تطلع من الديسكورد ، راح تندم على هالايام؟",
            "مع او ضد : الناس صارت م تعرف تسولف",
            "مع او ضد / مساواة المراة بالرجل  في كل شيء؟",
            "كمل : لو اهلي يقرأون افكاري كان (.........)",
            "وش مسمي اقرب شخص لك بالجوال ؟",
            "هل تكون العلاقة فاشلة لو لم تتم بالزواج؟",
            "شيء تفكر تشتريه ...",
            "منشن شخص وقوله كلمة بس  ..",
            "لو كانت عندك فرصة جريمة واحدة ومهما كانت لن تعاقب عليها فماذا ستفعل؟",
            "كم هو عمرك في حال قمت بإضافة 25 سنة إليه؟",
            "كم مرة تنظر إلى المرآة في اليوم؟",
            "هل تثق بالأشخاص الذي تتعرف إليهم عبر التيليقرام؟",
            "هل تؤمن بالصداقة بين الشباب والبنات؟",
            "هل يمكن لك التخلي عن حبك أمام كرامتك؟",
            "هل أنت سريع البديهة؟",
            "هل يمكنك تصنع البكاء؟",
            "هل تسببت بالأذى لشخص ما في حياتك؟",
            "ما الأهم من وجهة نظرك المظهر",
            "هل اشتريت ملابس فقط لكونها جميلة لكنها لا تناسبك؟",
            "كيف تواجه الظروف الصعبة والمشاكل؟",
            "هل رأي الآخرين مهم بالنسبة لك",
            "هل أنت سريع الغضب أم هادئ إلى حد بعيد؟",
            "هل أنت شخص واثق من نفسه أم خجول؟",
            "تحب السفر : ( لحالك ، اصحابك ، اهلك )",
            "تفضل :  ( فيتمو ، تانج ، بيبسي )",
            "رتبهم : ( الحب ، الصحة ، الكرامة ، المال )",
            "تكره الفئة الي ( كل شوي كلام ، دايم يحش )",
            "م تقدر تسيطر على ( ضحكتك ، نومك ، جوعك )",
            "بداية الحب تكون ( اهتمام ، تضحية ، شعور )",
            "مع او ضد : ( خير لك ان تكون مغفلاً من ان تستغفل غيرك )",
            "يبان عليك الحزن من ( صوتك - ملامحك )",
            "لو قلت لك عرف بنفسك بـ ( شطر ) كيف بتعرف بنفسك ؟",
            "اكتب الكلمة بـ لهجتك ( هربت )",
            "برأيك : كم العمر للزواج (مراة ، رجل )",
            "حط @منشن شخص تقوله: لاتتعب نفسك بالسهر م دريت عنك",
            "تفضل الاكل (البحري ولا المشوي)",
            "منشن.. شخص تقوله ( انت اسطورة )",
            "حط@ منشن لـ شخص تقوله (ارتحت لك)",
            "حط@منشن لـ شخص تقوله( ليه أنت جميل كذا ؟.)",
            "تؤمن ان في (حُب من أول نظرة) ولا لا ؟.",
            "حط@ ومنشن . شخص وقوله (الله يسامحك بس)",
            "ردّك على شخص قال (أنا بطلع من حياتك)؟.",
            "حط@منشن شخص تقوله (بطل تفكر فيني ابي انام)",
            "حط@منشن.  شخص وقوله (حركتك مالها داعي).",
            "أجمل شي بحياتك وش هو؟",
            "لو قابلت نفسك الصغيره وش ممكن تقول لها ؟",
            "لو كنت طبيب والمريض الي تعالجه توفى هل عندك القدره تعلم اهله بوفاته ؟",
            "مشروبك المفضل ؟",
            "هل يمكن أن تنتهك القانون لإنقاذ شخص ما ؟",
            "موهبة اكتشفتها في نفسك خلال فترة الحجر ؟",
            "هل الكل يستحق فرصة ثانية حتى مع اعمالهم السيئة ؟",
            "وقتك المفضل باليوم ؟",
            "يومك المفضل بالأسبوع ؟",
            "سويت شي وفخور بنفسك بسببه ؟",
            "ثلاث أشياء تحبها في نفسك ؟",
            "‏تفضل الأفلام: الوثائقية، الخيال، الرومانسي، الأكشن، الرعب ؟",
            "‏لو قالوا لك تقدر تغير شي واحد بنفسك وش بتغير ؟",
            "اغنيتك المفضلة ؟",
            "‏لو خيرت بين الصداقة او الحب أيهم الاختيار الافضل ؟",
            "كيف تقضي وقت فراغك ؟",
            "شيء تعلمته من الحياة ومستحيل تكرره ؟",
            "فخور بذاتك ؟",
            "سطر من أغنية تحبها ؟",
            "كلمة صرت تقولها كثير ؟",
            "وش اول شيء تسويه اذا عصبت ؟",
            "كم اطول فتره قعدت بدون جوال ؟",
            "لو خيروك تكون حيوان وش بتختار ؟",
            "وش افضل فصل عندك ؟",
            "تفضل غرفة لوحدك أو مع اخوانك ؟",
            "وش افضل جوال أمتلكته ؟",
            "وش أسم مسلسلك المفضل ؟",
            "وش أسم فلمك المفضل ؟",
            "وش شعورك الفترة ذي ؟",
            "يومك مر مثل ما خططت له ؟",
            "مين شخصك المفضل ؟",
            "أقرب ثلاث اشخاص لك ؟",
            "اغنية تهديها للي يحبك ؟",
            "اغنية تهديها للي يكرهك ؟",
            "تحب تقرأ الكتب ؟",
            "وش افضل كتاب عندك ؟",
            "مين الي تحسه مستحملك ؟",
            "تحب المطر و أجواء المطر  ؟",
            "نظرتك عن العلاقات والحب ؟",
            "وش المدينة الي تبي تزورها ؟",
            "متى اخر مره طلعت مع اصحابك ؟",
            "وش تسوي في هذه اللحظه ؟",
            "لو الجواب بيكون مستحيل ايش بيكون السؤال ؟",
            "لون حياتك زي لون تيشيرتك الحين ؟",
            "بكل صراحة عندك شخص يفز قلبك اذا جاك شعار منه ؟",
            "متى اخر هدية جتك ؟",
            "شيء فيك ما عجب أهلك ؟",
            "شيء فيك ما عجب اصحابك ؟",
            "ذوقك حلو في ايش ؟",
            "لو صحيت من النوم وحصلت صاحبك مبلكك وش بتسوي ؟",
            "لو الحياة طلعت حلم تفرح أو تحزن ؟",
            "ورينا أسمك بدون نقاط ؟",
            "عندك حظ في الاشياء الي تحبها ؟",
            "تقدر تتحكم بنفسك اذا غرت ؟",
            "كم مشكلة صارت لك في التلي ؟",
            "ورينا اخر 5 ايموجيات استخدمتها ؟",
            "لو شخص جاء يسرق من تحت مخدتك وش بيحصل ؟",
            "قول خمس اشياء تحبها في نفسك ؟",
            "لو الحرام صار حلال وش اول شيء بتسويه ؟",
            "حط قبل شاحن جوالك 1 وشوف كم يطلع ؟",
            "قد رسبت في مادة ؟",
            "اكله مستحيل تاكلها ؟",
            "قول بلهجتك ( أصمت أُريد التحدث )",
            "منشن @ شخص عشوائي يعطيك افتار",
            "هل انت راضي عن نفسك ؟",
            "‏هل انتِ من محبين الموسيقى الكلاسيكيه او الحديثه ؟",
            "اكله ودك تجربها ؟",
            "لو كانت للأيام الجميلة رائحة وش راح ستختار ؟",
            "شيء تحبه بس الناس تشوفه غريب ؟",
            "لو تكرهه جدًا ؟",
            "عطينا إقتباس تحبه من كِتاب أو اغنية ؟",
            "لو العالم مافيه احد غيرك وش اول شيء راح تسويه ؟",
            "انت إجتماعي أو انطوائي؟",
            "هل يومك جيد بنظرك ؟",
            "تفضل القهوه البارد أو الحاره ؟",
            "تفضل الشاي أو القهوه ؟",
            "تفكيرك صار مختلف عن السنة الماضية ؟",
            "لو يبعث الهدوء بنظرك ؟",
            "اذا بتروح مكتبه مثل جرير اول قسم تتوجه له دائمًا ؟",
            "تقدر تستغني عن جهازك لمدة اسبوع ؟",
            "انت صبور أو متسرع ؟",
            "شيء اساسي في يومك ؟",
            "رسالة لنفسك المستقبلية ؟",
            "وش هو نمط حياتك الأن ؟",
            "تتخذ القرار بالمنطق ام بالعاطفة ؟",
            "خمس اشياء مُمتن لها ؟",
            "أنا مُميز لأنّي _________ ؟",
            "كِلمة تتمنئ أنها تُحذف مِن قأموس مجتمعك ؟",
            "هل لديك حيوان اليف ؟",
            "أفضل أنمي عندك ؟",
            "أفضل فِلم عندك ؟",
            "أفضل مسلسل عندك ؟",
            "وش الفِلم أو الانمي الي تتمنئ الناس تشوفه ؟",
            "لحظات صغيرة من الصعب نسيانها ؟",
            "ماهي اساسيات العلاقة بالنسبة لك ؟",
            "عندك ڤوبيا من وش ؟",
            "ماهي اكثر المناظر التي تحبها ؟",
            "متى شعرت أنك كبرت ؟",
            "كِلمة تُسعد وتُحب سَماعها دائمًا ؟",
            "أكثر جُملة أثرت في حياتك ؟",
            "شخص أثر في حياتك ؟",
            "كِلمة توجهها للي يسطرون ؟",
            "كيف تتوقع حياتك اذا حبيت وخانتك حبيبتك ؟",
            "أخر مره تحدثت في الخاص ؟",
            "كم محادثة في الخاص ؟",
            "كم قروب عندك ؟",
            "عندك قروبات محد يدري عنها ؟",
            "عندك اشخاص مخبيهم عن الناس ؟",
            "تغار على صديقك أو صديقتك ؟",
            "كِلمة للي بيتيكن ؟",
            "قد كرهت أحد بسبب إسلوبه ؟",
            "قد حبيت شخص وخذلك ؟",
            "قد تعرضت للخيانه ؟",
            "قد صار لك حادث ؟",
            "قد حفظت كِتاب الله الكريم ؟",
            "عندك رتبة في القروب ؟",
            "لو قالوا أحظر شخص من الموجودين مين بتختار ؟",
            "اخر صوره حفظتها ؟",
            "تحب التجمعات ؟",
            "كلمة محتاج تسمعها عشان تفرح وتنبسط ؟",
            "اغنيه تحب تسمعها ؟",
            "مدينه تتمنى تسافر لها ؟",
            "( أنتِ غيمة قلبي وأطيَب أشخاصي ) لمن تهدي هالكلام ؟",
            "أذكر 5 اشخاص لازم تسولف معهم ؟",
            "صورة لشيء تتمنى إمتلاكه ؟",
            "اغلب وقتك اليوم قضيته في ؟",
            "منشن اول شخص طرأ على بالك بهاللحظه ؟",
            "قاعده تمشي عليها عند اختيارك للملابس ؟",
            "منشن شخص هنا ودك تكلمه تحظره ؟",
            "اشياء جميلة صارت لك اليوم ؟",
            "منشن شخص وحاول تقلد أسلوبه ؟",
            "اكثر 5 اشياء تكرهها في التلي ؟",
            "تحب الميمز ؟",
            "وش الشيء الي بشخصيتك تعتبره شيء مميز ؟",
            "دولة تتمنئ تزورها ؟",
            "( يا صديقي إن لم يُنصفك كتفي هاك ضلعي، اتكِئ ) منشن شخص يحتاج هالكلام ؟",
            "وش هي افضل سنه في حياتك وليش ؟",
            "‎الكتاب او الفيلم الي تتمنى تعيش فيه، و السبب ؟",
            "وش هي هوايتك المفضله ؟",
            "اذا حياتك هي نفس لون لبسك وش راح تكون ؟",
            "وش هو افضل برنامج عندك ؟",
            "انت شخص صريح ؟",
            "انت شخص تستحي ولا ما عليك ؟",
            "هل شخصيتك بالواقع نفس المواقع ؟",
            "وش اكبر مخاوفك او كوابيسك ؟",
            "تجربة في حياتك تتمنى تعيدها ؟",
            "صفه تحبها فيك سواًء كانت شكليًا او اخلاقيًا ؟",
            "صفة يصفك فيها شخص مقرب لك ؟",
            "أوصف أعز صديق لك ؟",
            "عبر عن مودك ب إيموجي ؟",
            "عندك شخص تفتقده اذا ما سولف ؟",
            "أختراع تتمنى يكون موجود ؟",
            "أول ما تصحى تكلم مين ؟",
            "أول ما تطيح في مصيبة تكلم مين ؟",
            "أول من تفضفض له مين ؟",
            "أكثر مرحله دراسية تحبها ؟",
            "وش اول شيء تسويه اذا تضايقت ؟",
            "اكثر شيء معروف بشخصيتك ؟",
            "كم عدد الاشخاص الي متهاوش معهم ؟",
            "وش تسوي الأن ؟",
            "متى أخر هديه جاتك ؟",
            "شيء فيك ما يعجب أهلك ؟",
            "تحس ذوقك حلو في ايش ؟",
            "اذا صحيت من النوم وحصلت شخصك المفضل مبلكك وش تسوي ؟",
            "أكتب أسمك وأنت مغمض ؟",
            "وش هو أفضل بوت ؟",
            "تقدر تتحكم في ذاتك اذا غرت ؟",
            "كم مشكلة دخلتها حتى الأن ؟",
            "اذا جيت بسرق الي تحت مخدتك وش بحصل ؟",
            "قول أشياء إيجابية عن نفسك ؟",
            "اذا شحن جوالك هو نسبة نعاسك، كم ؟",
            "سوي منشن @ عشوائي وقوله أحبك ؟",
            "قد صديقك سحب عليك عشان حبيبته ؟",
            "أفضل حافز للشخص ؟",
            "مسلسل/فلم تتابعة هالفترة ؟",
            "بماذا تختلف عن الآخرين ؟",
            "ماذا سرقت منك الحياة ؟",
            "صفة تجمّل الشخص برأيك ؟",
            "أفضل شيء تعلمته برأيك ؟",
            "ماذا تشتهي روحك ؟",
            "صورة لها ذكرى لا تنساها ؟",
            "إيموجي يوصف مزاجك حاليًا ؟",
            "الأهم بالنسبة لك، القلب أوم العقل ؟",
            "ما معنى أسمك ؟",
            "أشياء تجيب السعادة ؟",
            "يومك ما يكتمل إلا بـ_____ ؟",
            "أجمل شيء صار لك اليوم ؟",
            "بلد تحب شعبها ؟",
            "كم أسم ( منال ) تعرف في حياتك ؟",
            "هل تعود المياه إلى مجاريها بعد الاعتذار ؟",
            "متى تتقبل الهزيمة في الحب ؟",
            "أول بداية لطريق النجاح ؟",
            "كلمة لأصحاب الشائعات والأخبار الكاذبة ؟",
            "يومك في كلمة ؟",
            "انطباعك عن أسم ( الوليد، العنود ) ؟",
            "بلد تود الإقامة فيها ؟",
            "درس تعلمته في التلي ؟",
            "حيوان تخاف منه ؟",
            "طريقتك على الحصول الرأحة النفسية ؟",
            "أعظم إنجاز لك ؟",
            "نسبة رضاك عن نفسك في الفترة الأخيرة ؟",
            "جنسية غير جنسية بلدك تود لو تحصل عليها ؟",
            "هل للحزن دواء ؟",
            "دعاء وأذكار ترا لها أثر في حياتك ؟",
            "كلمات لا تتحمل سماعها ؟",
            "عطنا اعتراف أو شي حصل معك وإذا حكيت عنه محد صدقك ؟",
            "كيف علاقتك مع الحب ؟",
            "أي ترغب به الآن ؟",
            "متى تكون البراءه ذئب ؟",
            "هل تتوقع أن يصل البشر لمرحلة من التطور تجعلهم يتنقلون بين الكواكب بسهولة ؟",
            "أشياء ومنتجات جربتها في السفر أعجبتك ؟",
            "( الحياة مرة )/ هل قرأتها بالضمة أم بالفتحة ؟",
            "يتجاهلك بالقصد بعد صداقة طويلة، ما مقصده برأيك ؟",
            "شعورك الحالي في جملة ؟",
            "عندكم في الشلة ذلك الشخص الخجول جدًا ؟",
            "أشياء تجعلك تستمر وتتحمّل صعوبات الحياة ؟",
            "فنان/ة تحلم بلقائه ؟",
            "بتنام ولا بتواصل ؟",
            "ردة فعلك لو أوقفتك الشرطة في الطريق وسمعتهم يقولون هذا هو القاتل ؟",
            "شاركنا افضل قناة عندك ؟",
            "شيء جميل حصل معك اليوم ؟",
            "شاركنا صوره تمثل تخصصك ؟",
            "للإناث | لديكِ الجرأة لمصارحة الشخص اللي أذاك بكل شيء في قلبك ؟",
            "أكثر طبع غريب فيك وتحبه ؟",
            "أبسط شيء بعدل يومك كامل ؟",
            "سؤال تسأل نفسك فيه دائمًا ولا حصلت جواب ؟",
            "أسم تحب تقوله ؟",
            "أسم بنت تحبه ؟",
            "أسم ولد تحبه ؟",
            "وش تحس من يوم يناديك أبوك ؟",
            "مين أشد عصبية أمك أو أبوك ؟",
            "عادي تتابع فلم/مسلسل أكثر من مره ؟",
            "تقدر ترسل أخر صوره حفظتها ؟",
            "وش هي أكلتك المفظلة ؟",
            "وش الصفة الي تميزك عن غيرك ؟",
            "أنت شخص مسالم ؟",
            "شيء تسمعه كثير من الناس عنك ؟",
            "تحس أنك غامض ولا سراويلك منشوره ؟",
            "صفة تكرهها ؟",
            "أنت من النوع الي يعرف يسولف ويفتح مواضيع ؟",
            "موضوع ما تتقبل المزح فيه ؟",
            "كِلمة توجهها لوالديك ؟",
            "سطر من أخر أغنية سمعتها ؟",
            "عندك شخص تقوله كل تفاصيل يومك ؟",
            "ليش الاغلب يفضلون العلاقات الإكترونية ؟",
            "وش رأيك بالأهل الي يفتشون الجوالات ؟",
            "أهلك يفتشون جوالك ؟",
            "هل أنت راضي عن نفسك الفترة ذي ؟",
            "أنت من مُحبين الموسيقى القديمة أو الجديدة ؟",
            "أكله ودك تجربها ؟",
            "لو كانت للأيام الجميلة رائحه ماذا ستكون ؟",
            "تاريخ ودك تعيش فيه ؟",
            "لو تكرهه جدًا ؟",
            "عطينا إقتباس تحبه ؟",
            "عطينا حكمة لليوم ؟",
            "حكمتك الي ماشي عليها ؟",
            "أنت فاشل دراسيًا ؟",
            "انت متوظف ؟",
            "أسمك الي بالبرنامج غير عن الواقعي ؟",
            "مين الي أختار لك أسمك ؟",
            "كذبت في الأسئلة الي راحت ؟",
            "لو العالم مافيه أحد غيرك وش بتسوي ؟",
            "هل يومك جيد ؟",
            "القهوة بنظرك ؟",
            "تفكيرك الأن مُختلف عن العام الماضي ؟",
            "لو تروح مكتبه مثل جرير اول قسم تتوجه له دائمًا ؟",
            "تقدر تستغني عن هاتفك لأسبوع ؟",
            "شيء تحس لو ما سويته ليوم تفقده ؟",
            "رسالة لنفسك المستقبيلة ؟",
            "وش رأيك في الي يطلب السناب ؟",
            "تقدر تعطي سنابك أحد ؟",
            "كم شخص مسوي له بلوك ؟",
            "مفهوم الصداقة بالنسبة لك ؟",
            "يزيد حُبي لكِ لمّا ... ؟",
            "مِن نِعْم الحياة ... ؟",
            "اذا فضفضت ترتاح ؟",
            "اكثر شي ينرفزك ؟",
            "اخر مكان رحتله ؟",
            "شخص @ تعترفلة بشي ؟",
            "تغار ؟",
            "تعتقد فيه أحد يراقبك 👩🏼‍💻؟",
            "ولادتك بنفس المكان الي عايش فيه ولا لا؟",
            "اكثر شي ينرفزك ؟",
            "تغار ؟",
            "كم تبلغ ذاكرة هاتفك؟",
            "صندوق اسرارك ؟",
            "شخص @ تعترفله بشي ؟",
            "يومك ضاع على ؟",
            "اغرب شيء حدث في حياتك ؟",
            " نسبة حبك للاكل ؟",
            " حكمة تأمان بيها ؟",
            " اكثر شي ينرفزك ؟",
            " هل تعرضت للظلم من قبل؟",
            " خانوك ؟",
            " تزعلك الدنيا ويرضيك ؟",
            " تاريخ غير حياتك ؟",
            " أجمل سنة ميلادية مرت عليك ؟",
            " ولادتك بنفس المكان الي هسة عايش بي او لا؟",
            " تزعلك الدنيا ويرضيك ؟",
            " ماهي هوايتك؟",
            " دوله ندمت انك سافرت لها ؟",
            "شخص اذا جان بلطلعة تتونس بوجود؟",
            " تاخذ مليون دولار و تضرب خويك؟",
            " تاريخ ميلادك؟",
            "اشكم مره حبيت ؟",
            " يقولون ان الحياة دروس ، ماهو أقوى درس تعلمته من الحياة ؟",
            " هل تثق في نفسك ؟",
            " اسمك الثلاثي ؟",
            "كلمة لشخص خذلك؟",
            "هل انت متسامح ؟",
            "طريقتك المعتادة في التخلّص من الطاقة السلبية؟",
            "عصير لو قهوة؟",
            " صديق أمك ولا أبوك. ؟",
            "تثق بـ احد ؟",
            "كم مره حبيت ؟",
            " اوصف حياتك بكلمتين ؟",
            " حياتك محلوا بدون ؟",
            " وش روتينك اليومي؟",
            " شي تسوي من تحس بلملل؟",
            " يوم ميلادك ؟",
            " اكثر مشاكلك بسبب ؟",
            " تزعلك الدنيا ويرضيك ؟",
            " تتوقع فيه احد حاقد عليك ويكرهك ؟",
            "كلمة غريبة من لهجتك ومعناها؟",
            " • هل تحب اسمك أو تتمنى تغييره وأي الأسماء ستختار",
            "• كيف تشوف الجيل ذا؟",
            "• تاريخ لن تنساه📅؟",
            "• هل من الممكن أن تقتل أحدهم من أجل المال؟",
            "• تؤمن ان في حُب من أول نظرة ولا لا ؟.",
            "• ‏ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭",
            "• طبع يمكن يخليك تكره شخص حتى لو كنت تُحبه🙅🏻‍♀️؟",
            "• ما هو نوع الموسيقى المفضل لديك والذي تستمع إليه دائمًا؟ ولماذا قمت باختياره تحديدًا؟",
            "• أطول مدة نمت فيها كم ساعة؟",
            "• كلمة غريبة من لهجتك ومعناها؟🤓",
            "• ردة فعلك لو مزح معك شخص م تعرفه ؟",
            "• شخص تحب تستفزه😈؟",
            "• تشوف الغيره انانيه او حب؟",
            "• مع او ضد : النوم افضل حل لـ مشاكل الحياة؟",
            "• اذا اكتشفت أن أعز أصدقائك يضمر لك السوء، موقفك الصريح؟",
            "• ‏للعيال - آخر مرة وصلك غزل من بنت؟",
            "• أوصف نفسك بكلمة؟",
            "• شيء من صغرك ماتغير فيك؟",
            "• ردة فعلك لو مزح معك شخص م تعرفه ؟",
            "• اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه ، مقدمة الحديث وش راح تكون ؟.",
            "• كلمة لشخص أسعدك رغم حزنك في يومٍ من الأيام ؟",
            "• حاجة تشوف نفسك مبدع فيها ؟",
            "• يهمك ملابسك تكون ماركة ؟",
            "• يومك ضاع على؟",
            "• اذا اكتشفت أن أعز أصدقائك يضمر لك",
            " السوء، موقفك الصريح؟",
            "• هل من الممكن أن تقتل أحدهم من أجل المال؟",
            "• كلمه ماسكه معك الفترة هذي ؟",
            "• كيف هي أحوال قلبك؟",
            "• صريح، مشتاق؟",
            "• اغرب اسم مر عليك ؟",
            "• تختار أن تكون غبي أو قبيح؟",
            "• آخر مرة أكلت أكلتك المفضّلة؟",
            "• اشياء صعب تتقبلها بسرعه ؟",
            "• كلمة لشخص غالي اشتقت إليه؟",
            "• اكثر شيء تحس انه مات ف مجتمعنا؟",
            "• هل يمكنك مسامحة شخص أخطأ بحقك لكنه قدم الاعتذار وشعر بالندم؟",
            "• آخر شيء ضاع منك؟",
            "• تشوف الغيره انانيه او حب؟",
            "• لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟",
            "• شيء كل م تذكرته تبتسم ...",
            "• هل تحبها ولماذا قمت باختيارها؟",
            "• هل تنفق مرتبك بالكامل أم أنك تمتلك هدف يجعلك توفر المال؟",
            "• متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟",
            "• أقبح القبحين في العلاقة: الغدر أو الإهمال🤷🏼؟",
            "• هل وصلك رسالة غير متوقعة من شخص وأثرت فيك ؟",
            "• هل تشعر أن هنالك مَن يُحبك؟",
            "• وش الشيء الي تطلع حرتك فيه و زعلت ؟",
            "• صوت مغني م تحبه",
            "• كم في حسابك البنكي ؟",
            "• اذكر موقف ماتنساه بعمرك؟",
            "• ردة فعلك لو مزح معك شخص م تعرفه ؟",
            "• عندك حس فكاهي ولا نفسية؟",
            "• من وجهة نظرك ما هي الأشياء التي تحافظ على قوة وثبات العلاقة؟",
            "• ما هو نوع الموسيقى المفضل لديك والذي تستمع إليه دائمًا؟ ولماذا قمت باختياره تحديدًا؟",
            "• هل تنفق مرتبك بالكامل أم أنك تمتلك هدف يجعلك توفر المال؟",
            "• هل وصلك رسالة غير متوقعة من شخص وأثرت فيك ؟",
            "• شيء من صغرك ماتغير فيك؟",
            "• هل يمكنك أن تضحي بأكثر شيء تحبه وتعبت للحصول عليه لأجل شخص تحبه؟",
            "• هل تحبها ولماذا قمت باختيارها؟",
            "• كلمة لشخص أسعدك رغم حزنك في يومٍ من الأيام ؟",
            "• كم مره تسبح باليوم",
            "• أفضل صفة تحبه بنفسك؟",
            "• أجمل شيء حصل معك خلال هاليوم؟",
            "• ‏شيء سمعته عالق في ذهنك هاليومين؟",
            "• هل يمكنك تغيير صفة تتصف بها فقط لأجل شخص تحبه ولكن لا يحب تلك الصفة؟",
            "• ‏أبرز صفة حسنة في صديقك المقرب؟",
            "• ما الذي يشغل بالك في الفترة الحالية؟",
            "• آخر مرة ضحكت من كل قلبك؟",
            "• احقر الناس هو من ...",
            "• اكثر دوله ودك تسافر لها؟",
            "• آخر خبر سعيد، متى وصلك؟",
            "• ‏نسبة احتياجك للعزلة من 10؟",
            "• هل تنفق مرتبك بالكامل أم أنك تمتلك هدف يجعلك توفر المال؟",
            "• أكثر جملة أثرت بك في حياتك؟",
            "• لو قالوا لك  تناول صنف واحد فقط من الطعام لمدة شهر .",
            "• هل تنفق مرتبك بالكامل أم أنك تمتلك هدف يجعلك توفر المال؟",
            "• آخر مرة ضحكت من كل قلبك؟",
            "• وش الشيء الي تطلع حرتك فيه و زعلت ؟",
            "• تزعلك الدنيا ويرضيك ؟",
            "• متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟",
            "• تعتقد فيه أحد يراقبك؟",
            "• احقر الناس هو من ...",
            "• شيء من صغرك ماتغير فيك؟",
            "• وين نلقى السعاده برايك؟",
            "• هل تغارين من صديقاتك؟",
            "• أكثر جملة أثرت بك في حياتك؟",
            "• كم عدد اللي معطيهم بلوك؟",
            "• أجمل سنة ميلادية مرت عليك ؟",
            "• أوصف نفسك بكلمة؟"
}
for k,v in pairs(list) do
Redis:sadd(TheMero.."gamebot:List:Manager",v)
end
return send(msg_chat_id,msg_id,'\n⇜ تم اضافه اسئله كت ',"md",true)  
end
if text and text:match('^ذيع (-100%d+)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local Chatid = text:match('^ذيع (-100%d+)$') 
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end 
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local Get_Chat = bot.getChat(Chatid)
if not data.id then
send(msg_chat_id,msg_id,'⇜ لا يوجد قروب في البوت بهذا الايدي')
return false
end
send(Chatid,0,Message_Reply.content.text.text)
send(msg_chat_id,msg_id,'⇜ تم الاذاعه الى : '..Get_Chat.title..'\n ')
end 
if text and text:match('^حظر قروب (-100%d+)$') then
local Chatid = text:match('^حظر قروب (-100%d+)$')
if not msg.ControllerBot then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(1)..' ) ',"md",true)  
end
local Get_Chat = bot.getChat(Chatid)
bot.leaveChat(Chatid)
Redis:sadd(TheMero.."Black:listBan:",Chatid)
send(msg_chat_id,msg_id,'⇜ تم حظر القروب : '..Get_Chat.title..'\n⇜ وتم مغادره البوت من القروب')
end 
if text and text:match('^الغاء حظر قروب (-100%d+)$') then
local Chatid = text:match('^الغاء حظر قروب (-100%d+)$')
if not msg.ControllerBot then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(1)..' ) ',"md",true)  
end
Redis:srem(TheMero.."Black:listBan:",Chatid)
send(msg_chat_id,msg_id,'⇜ تم الغاء حظر القروب ')
end 
if text == 'الروليت' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local xxffxx = 'اهلا بك في لعبه الروليت يجب انضمام 3 لاعبين فقط'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '⇜ اضغط للانضمام الى اللعبة', data = '/joinerolet'},
},
}
}
Redis:del(TheMero..'rolet:list'..msg.chat_id) 
send(msg_chat_id,msg_id,xxffxx,"md",false, false, false, false, reply_markup)
end
if text == "الحظ" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
local xxffxx = 'اهلا بك في لعبه الحظ اضغط للانضمام'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/joineloce'},
},
}
}
Redis:del(TheMero..'loce:list'..msg.chat_id) 
send(msg_chat_id,msg_id,xxffxx,"md",false, false, false, false, reply_markup)
end
end
if text == "اضف سؤال" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,true)
return send(msg_chat_id,msg_id,"⇜ ارسل السؤال الان ")
end
if text == "مسح سؤال" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
Redis:set(TheMero.."gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,'truedel')
return send(msg_chat_id,msg_id,"⇜ ارسل السؤال الان ")
end
if text == 'الاسئله المضافه' then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
local list = Redis:smembers(TheMero.."gamebot:new1")
t = "⇜ الاسئله المضافه : \n ـــــــــــــــــــــــــــــــــــــــــــــــ\n"
for k,v in pairs(list) do
t = t..""..k.."- (["..v.."])\n"
end
if #list == 0 then
t = "⇜ لا يوجد اسئله"
end
return send(msg_chat_id,msg_id,t,"md")
end
if text == 'مسح الاسئله المضافه' then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
Redis:del(TheMero.."gamebot:new1")
return send(msg_chat_id,msg_id,"⇜ تم مسح الاسئله","md")
end
if text == "لو خيروك" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
local list = {
"لو خيروك |  بين شراء منزل صغير أو استئجار فيلا كبيرة بمبلغ معقول؟ ",
"لو خيروك |  أن تعيش قصة فيلم هل تختار الأكشن أو الكوميديا؟ ",
"لو خيروك |  بين تناول البيتزا وبين الايس كريم وذلك بشكل دائم؟ ",
"لو خيروك |  بين إمكانية تواجدك في الفضاء وبين إمكانية تواجدك في البحر؟ ",
"لو خيروك |  بين تغيير وظيفتك كل سنة أو البقاء بوظيفة واحدة طوال حياتك؟ ",
"لو خيروك |  أسئلة محرجة أسئلة صراحة ماذا ستختار؟ ",
"لو خيروك |  بين الذهاب إلى الماضي والعيش مع جدك أو بين الذهاب إلى المستقبل والعيش مع أحفادك؟ ",
"لو كنت شخص اخر هل تفضل البقاء معك أم أنك ستبتعد عن نفسك؟ ",
"لو خيروك |  بين الحصول على الأموال في عيد ميلادك أو على الهدايا؟ ",
"لو خيروك |  بين القفز بمظلة من طائرة أو الغوص في أعماق البحر؟ ",
"لو خيروك |  بين الاستماع إلى الأخبار الجيدة أولًا أو الاستماع إلى الأخبار السيئة أولًا؟ ",
    "لو خيروك بين العيش وحدك في جزيرة كبيرة منعزلة مع أكبر درجات الرفاهية وبين العيش في مكان قديم ولكن مع أصدقائك المقربين.",
    "لو خيروك بين فقدان ذاكرتك والعيش مع أصدقائك وأقربائك أو بقاء ذاكرتك ولكن العيش وحيد.",
    "للو خيروك بين تناول الخضار والفاكهة طوال حياتك أو تناول اللحوم.",
    "لو خيروك بين رؤية الأشباح فقط أو سماع صوتها فقط.",
    "لو خيروك بين القدرة على سماع أفكار الناس أو القدرة على العودة في الزمن للخلف.",
    "لو خيروك بين القدرة على الاختفاء أو القدرة على الطيران.",
    "لو خيروك بين أن تعيش 5 دقائق في الماضي أو أن تعيشها في المستقبل.",
    "لو خيروك بين 5 ملايين ريال أو 5 ملايين لحظة سعادة حقيقيةا.",
    "لو خيروك بين الاعتذار عن خطأ اقترفته أو أن يقدم لك شخص أخطأ في حقق اعتذار.",
    "لو خيروك بين الحقد أو المسامحة.",
    "لو خيروك بين إنقاذ نفسك أو إنقاذ شخص وقد يعرضك ذلك للأذى.",
    "لو خيروك بين أن تعيش في القرن الرابع عشر أو القرن الحالي.",
    "لو خيروك بين امتلاك سرعة الفهد أو دهاء الثعلب.",
    "لو خيروك بين أن تحصل على درجة كاملة في كامل اختباراتك القادمة والسابقة أو أن تسافر إلى بلد تحبه.",
    "لو خيروك بين العيش بجانب الجبال والحدائق والأشجار أو العيش بجانب البحر.",
    "لو خيروك بين تحقيق 3 أمنيات (لا تتعلق بأشخاص) أو اختيار 3 أشخاص للعيش معهم طوال حياتك.",
    "لو خيروك بين النوم في غابة مظلمة أو على ظهر سفينة في يوم عاصف.",
    "لو خيروك بين المال أو الجمال.",
    "لو خيروك بين المال أو الذكاء.",
    "لو خيروك بين المال أو الصحة.",
    "لو خيروك بين الجمال أو الذكاء.",
    "لو خيروك بين الذكاء أو الصحة.",
    "لو خيروك بين إرسال رسالة صوتية لأمك مدة دقيقة كاملة لا تحتوي إلا على صراخك وخوفك، أو كسر بيضة نيئة على رأسك.",
"لو خيروك |  بين أن تكون رئيس لشركة فاشلة أو أن تكون موظف في شركة ناجحة؟ ",
"لو خيروك |  بين أن يكون لديك جيران صاخبون أو أن يكون لديك جيران فضوليون؟ ",
"لو خيروك |  بين أن تكون شخص مشغول دائمًا أو أن تكون شخص يشعر بالملل دائمًا؟ ",
"لو خيروك |  بين قضاء يوم كامل مع الرياضي الذي تشجعه أو نجم السينما الذي تحبه؟ ",
"لو خيروك |  بين استمرار فصل الشتاء دائمًا أو بقاء فصل الصيف؟ ",
"لو خيروك |  بين العيش في القارة القطبية أو العيش في الصحراء؟ ",
"لو خيروك |  بين أن تكون لديك القدرة على حفظ كل ما تسمع أو تقوله وبين القدرة على حفظ كل ما تراه أمامك؟ ",
"لو خيروك |  بين أن يكون طولك 150 سنتي متر أو أن يكون 190 سنتي متر؟ ",
"لو خيروك |  بين إلغاء رحلتك تمامًا أو بقائها ولكن فقدان الأمتعة والأشياء الخاص بك خلالها؟ ",
"لو خيروك |  بين أن تكون اللاعب الأفضل في فريق كرة فاشل أو أن تكون لاعب عادي في فريق كرة ناجح؟ ",
"لو خيروك |  بين ارتداء ملابس البيت لمدة أسبوع كامل أو ارتداء البدلة الرسمية لنفس المدة؟ ",
"لو خيروك |  بين امتلاك أفضل وأجمل منزل ولكن في حي سيء أو امتلاك أسوأ منزل ولكن في حي جيد وجميل؟ ",
"لو خيروك |  بين أن تكون غني وتعيش قبل 500 سنة، أو أن تكون فقير وتعيش في عصرنا الحالي؟ ",
"لو خيروك |  بين ارتداء ملابس الغوص ليوم كامل والذهاب إلى العمل أو ارتداء ملابس جدك/جدتك؟ ",
"لو خيروك |  بين قص شعرك بشكل قصير جدًا أو صبغه باللون الوردي؟ ",
"لو خيروك |  بين أن تضع الكثير من الملح على كل الطعام بدون علم أحد، أو أن تقوم بتناول شطيرة معجون أسنان؟ ",
"لو خيروك |  بين قول الحقيقة والصراحة الكاملة مدة 24 ساعة أو الكذب بشكل كامل مدة 3 أيام؟ ",
"لو خيروك |  بين تناول الشوكولا التي تفضلها لكن مع إضافة رشة من الملح والقليل من عصير الليمون إليها أو تناول ليمونة كاملة كبيرة الحجم؟ ",
"لو خيروك |  بين وضع أحمر الشفاه على وجهك ما عدا شفتين أو وضع ماسكارا على شفتين فقط؟ ",
"لو خيروك |  بين الرقص على سطح منزلك أو الغناء على نافذتك؟ ",
"لو خيروك |  بين تلوين شعرك كل خصلة بلون وبين ارتداء ملابس غير متناسقة لمدة أسبوع؟ ",
"لو خيروك |  بين تناول مياه غازية مجمدة وبين تناولها ساخنة؟ ",
"لو خيروك |  بين تنظيف شعرك بسائل غسيل الأطباق وبين استخدام كريم الأساس لغسيل الأطباق؟ ",
"لو خيروك |  بين تزيين طبق السلطة بالبرتقال وبين إضافة البطاطا لطبق الفاكهة؟ ",
"لو خيروك |  بين اللعب مع الأطفال لمدة 7 ساعات أو الجلوس دون فعل أي شيء لمدة 24 ساعة؟ ",
"لو خيروك |  بين شرب كوب من الحليب أو شرب كوب من شراب عرق السوس؟ ",
"لو خيروك |  بين الشخص الذي تحبه وصديق الطفولة؟ ",
"لو خيروك |  بين أختك وأخيك؟ ",
"لو خيروك |  بين صديق قام بغدرك وعدوك؟ ",
"لو خيروك |  بين خسارة حبيبك/حبيبتك أو خسارة أخيك/أختك؟ ",
"لو خيروك |  بإنقاذ شخص واحد مع نفسك بين أمك أو ابنك؟ ",
"لو خيروك |  بين ابنك وابنتك؟ ",
"لو خيروك |  بين زوجتك وابنك/ابنتك؟ ",
"لو خيروك |  بين جدك أو جدتك؟ ",
"لو خيروك |  بين زميل ناجح وحده أو زميل يعمل كفريق؟ ",
"لو خيروك |  بين لاعب كرة قدم مشهور أو موسيقي مفضل بالنسبة لك؟ ",
"لو خيروك |  بين مصور فوتوغرافي جيد وبين مصور سيء ولكنه عبقري فوتوشوب؟ ",
"لو خيروك |  بين سائق سيارة يقودها ببطء وبين سائق يقودها بسرعة كبيرة؟ ",
"لو خيروك |  بين أستاذ اللغة العربية أو أستاذ الرياضيات؟ ",
"لو خيروك |  بين أخيك البعيد أو جارك القريب؟ ",
"لو خيروك |  يبن صديقك البعيد وبين زميلك القريب؟ ",
"لو خيروك |  بين رجل أعمال أو أمير؟ ",
"لو خيروك |  بين نجار أو حداد؟ ",
"لو خيروك |  بين طباخ أو خياط؟ ",
"لو خيروك |  بين أن تكون كل ملابس بمقاس واحد كبير الحجم أو أن تكون جميعها باللون الأصفر؟ ",
"لو خيروك |  بين أن تتكلم بالهمس فقط طوال الوقت أو أن تصرخ فقط طوال الوقت؟ ",
"لو خيروك |  بين أن تمتلك زر إيقاف موقت للوقت أو أن تمتلك أزرار للعودة والذهاب عبر الوقت؟ ",
"لو خيروك |  بين أن تعيش بدون موسيقى أبدًا أو أن تعيش بدون تلفاز أبدًا؟ ",
"لو خيروك |  بين أن تعرف متى سوف تموت أو أن تعرف كيف سوف تموت؟ ",
"لو خيروك |  بين العمل الذي تحلم به أو بين إيجاد شريك حياتك وحبك الحقيقي؟ ",
"لو خيروك |  بين معاركة دب أو بين مصارعة تمساح؟ ",
"لو خيروك |  بين إما الحصول على المال أو على المزيد من الوقت؟ ",
"لو خيروك |  بين امتلاك قدرة التحدث بكل لغات العالم أو التحدث إلى الحيوانات؟ ",
"لو خيروك |  بين أن تفوز في اليانصيب وبين أن تعيش مرة ثانية؟ ",
"لو خيروك |  بأن لا يحضر أحد إما لحفل زفافك أو إلى جنازتك؟ ",
"لو خيروك |  بين البقاء بدون هاتف لمدة شهر أو بدون إنترنت لمدة أسبوع؟ ",
"لو خيروك |  بين العمل لأيام أقل في الأسبوع مع زيادة ساعات العمل أو العمل لساعات أقل في اليوم مع أيام أكثر؟ ",
"لو خيروك |  بين مشاهدة الدراما في أيام السبعينيات أو مشاهدة الأعمال الدرامية للوقت الحالي؟ ",
"لو خيروك |  بين التحدث عن كل شيء يدور في عقلك وبين عدم التحدث إطلاقًا؟ ",
"لو خيروك |  بين مشاهدة فيلم بمفردك أو الذهاب إلى مطعم وتناول العشاء بمفردك؟ ",
"لو خيروك |  بين قراءة رواية مميزة فقط أو مشاهدتها بشكل فيلم بدون القدرة على قراءتها؟ ",
"لو خيروك |  بين أن تكون الشخص الأكثر شعبية في العمل أو المدرسة وبين أن تكون الشخص الأكثر ذكاءً؟ ",
"لو خيروك |  بين إجراء المكالمات الهاتفية فقط أو إرسال الرسائل النصية فقط؟ ",
"لو خيروك |  بين إنهاء الحروب في العالم أو إنهاء الجوع في العالم؟ ",
"لو خيروك |  بين تغيير لون عينيك أو لون شعرك؟ ",
"لو خيروك |  بين امتلاك كل عين لون وبين امتلاك نمش على خديك؟ ",
"لو خيروك |  بين الخروج بالمكياج بشكل مستمر وبين الحصول على بشرة صحية ولكن لا يمكن لك تطبيق أي نوع من المكياج؟ ",
"لو خيروك |  بين أن تصبحي عارضة أزياء وبين ميك اب أرتيست؟ ",
"لو خيروك |  بين مشاهدة كرة القدم أو متابعة الأخبار؟ ",
"لو خيروك |  بين موت شخصية بطل الدراما التي تتابعينها أو أن يبقى ولكن يكون العمل الدرامي سيء جدًا؟ ",
"لو خيروك |  بين العيش في دراما قد سبق وشاهدتها ماذا تختارين بين الكوميديا والتاريخي؟ ",
"لو خيروك |  بين امتلاك القدرة على تغيير لون شعرك متى تريدين وبين الحصول على مكياج من قبل خبير تجميل وذلك بشكل يومي؟ ",
"لو خيروك |  بين نشر تفاصيل حياتك المالية وبين نشر تفاصيل حياتك العاطفية؟ ",
"لو خيروك |  بين البكاء والحزن وبين اكتساب الوزن؟ ",
"لو خيروك |  بين تنظيف الأطباق كل يوم وبين تحضير الطعام؟ ",
"لو خيروك |  بين أن تتعطل سيارتك في نصف الطريق أو ألا تتمكنين من ركنها بطريقة صحيحة؟ ",
"لو خيروك |  بين إعادة كل الحقائب التي تملكينها أو إعادة الأحذية الجميلة الخاصة بك؟ ",
"لو خيروك |  بين قتل حشرة أو متابعة فيلم رعب؟ ",
"لو خيروك |  بين امتلاك قطة أو كلب؟ ",
"لو خيروك |  بين الصداقة والحب ",
"لو خيروك |  بين تناول الشوكولا التي تحبين طوال حياتك ولكن لا يمكنك الاستماع إلى الموسيقى وبين الاستماع إلى الموسيقى ولكن لا يمكن لك تناول الشوكولا أبدًا؟ ",
"لو خيروك |  بين مشاركة المنزل مع عائلة من الفئران أو عائلة من الأشخاص المزعجين الفضوليين الذين يتدخلون في كل كبيرة وصغيرة؟ ",
"لو خيروك بين أن تكون أقوى شخص في العالم أو أذكى شخص في العالم.",
"لو خيروك بين نشر 25 رقم من سجل مكالماتك وبين نشر آخر 25 صورة قمت بالتقاطها.",
"لو خيروك بين الفوز في اليانصيب بالجائزة الكبرى بشرط إنفاقها كلها في يوم واحد أو أن تتم مضاعفة راتبك 3 مرات للأبد.",
"لو خيروك بين القدرة على كشف كذب الجميع أو القدرة على الكذب بدون أن يتم كشف كذبتك أبدًا.",
"لو خيروك بين الاستماع لنفس الأغنية دائمًا أو مشاهدة نفس الفيلم.",
"لو خيروك بين امتلاك قطة أو كلب.",
"لو خيروك بين الصداقة والحب",
"لو خيروك بين العيش وحدك في جزيرة كبيرة منعزلة مع أكبر درجات الرفاهية وبين العيش في مكان قديم ولكن مع أصدقائك المقربين.",
"لو خيروك بين فقدان ذاكرتك والعيش مع أصدقائك وأقربائك أو بقاء ذاكرتك ولكن العيش وحيد.",
"لو خيروك بين تناول الخضار والفاكهة طوال حياتك أو تناول اللحوم.",
"لو خيروك بين رؤية الأشباح فقط أو سماع صوتها فقط.",
"لو خيروك بين القدرة على سماع أفكار الناس أو القدرة على العودة في الزمن للخلف.",
"لو خيروك بين القدرة على الاختفاء أو القدرة على الطيران.",
"لو خيروك بين أن تعيش 5 دقائق في الماضي أو أن تعيشها في المستقبل.",
"لو خيروك بين 5 ملايين دولار أو 5 ملايين لحظة سعادة حقيقية.",
"لو خيروك بين الاعتذار عن خطأ اقترفته أو أن يقدم لك شخص أخطأ في حقق اعتذار.",
"لو خيروك بين الحقد أو المسامحة.",
"لو خيروك بين إنقاذ نفسك أو إنقاذ شخص وقد يعرضك ذلك للأذى.",
"لو خيروك بين أن تعيش في القرن الرابع عشر أو القرن الحالي.",
"لو خيروك بين امتلاك سرعة الفهد أو دهاء الثعلب.",
"لو خيروك بين أن تحصل على درجة كاملة في كامل اختباراتك القادمة والسابقة أو أن تسافر إلى بلد تحبه.",
"لو خيروك بين العيش بجانب الجبال والحدائق والأشجار أو العيش بجانب البحر.",
"لو خيروك بين تحقيق 3 أمنيات (لا تتعلق بأشخاص) أو اختيار 3 أشخاص للعيش معهم طوال حياتك.",
"لو خيروك بين النوم في غابة مظلمة أو على ظهر سفينة في يوم عاصف.",
"لو خيروك بين المال أو الجمال.",
"لو خيروك بين المال أو الذكاء.",
"لو خيروك بين المال أو الصحة.",
"لو خيروك بين الجمال أو الذكاء.",
"لو خيروك بين الذكاء أو الصحة."
}
local kter = list[math.random(#list)]
return send(msg_chat_id,msg_id,'['..kter..']',"md")
end
end
if text == "علام" or text == "اعلام" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
KlamSpeed = {
"أمريكا",
"فرنسا",
"روسيا",
"بريطانيا",
"اوكرانيا",
"الجزائر",
"العراق",
"لبنان",
"سوريا",
"ايطاليا",
"المانيا",
"كوريا الشمالية",
"الإمارات",
"السعودية",
"فلسطين",
"قطر",
"البحرين",
"بولندا",
"باكستان",
"المغرب",
"ليبيا",
"السودان",
"تركيا",
"الصين",
"استراليا",
"اليابان",
"ايران",
"أذربيجان",
"تونس",
"النمسا",
"الصومال",
"مصر",
"اليونان",
"إثيوبيا",
"الكويت",
"رومانيا",
"اسبانيا",
"موريتانيا",
"فنزويلا",
"جزر القمر",
"الاردن",
"عمان",
"السويد",
"المجر",
"سويسرا"
};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(TheMero.."Mero:Game:alam"..msg.chat_id,name)
name = string.gsub(name,"أمريكا","🇺🇸")
name = string.gsub(name,"فرنسا","🇫🇷")
name = string.gsub(name,"روسيا","🇷🇺")
name = string.gsub(name,"بريطانيا","🇬🇧")
name = string.gsub(name,"اوكرانيا","🇺🇦")
name = string.gsub(name,"الجزائر","🇩🇿")
name = string.gsub(name,"العراق","🇮??")
name = string.gsub(name,"لبنان","🇱🇧")
name = string.gsub(name,"سوريا","🇸🇾")
name = string.gsub(name,"ايطاليا","🇮🇹")
name = string.gsub(name,"المانيا","🇩🇪")
name = string.gsub(name,"كوريا الشمالية","🇰🇵")
name = string.gsub(name,"الإمارات","🇦🇪")
name = string.gsub(name,"السعودية","🇸🇦")
name = string.gsub(name,"فلسطين","🇵🇸")
name = string.gsub(name,"قطر","🇶🇦")
name = string.gsub(name,"البحرين","🇧🇭")
name = string.gsub(name,"بولندا","🇵🇱")
name = string.gsub(name,"باكستان","🇵🇰")
name = string.gsub(name,"المغرب","🇲🇦")
name = string.gsub(name,"ليبيا","🇱🇾")
name = string.gsub(name,"السودان","🇸🇩")
name = string.gsub(name,"تركيا","🇹🇷")
name = string.gsub(name,"الصين","🇨🇳")
name = string.gsub(name,"استراليا","🇦🇺")
name = string.gsub(name,"اليابان","🇯🇵")
name = string.gsub(name,"ايران","🇮🇷")
name = string.gsub(name,"أذربيجان","🇦🇿")
name = string.gsub(name,"تونس","🇹🇳")
name = string.gsub(name,"النمسا","🇦🇹")
name = string.gsub(name,"الصومال","🇸🇴")
name = string.gsub(name,"مصر","🇪🇬")
name = string.gsub(name,"اليونان","🇬🇷")
name = string.gsub(name,"إثيوبيا","🇪🇹")
name = string.gsub(name,"الكويت","🇰🇼")
name = string.gsub(name,"رومانيا","🇷🇴")
name = string.gsub(name,"اسبانيا","🇪🇸")
name = string.gsub(name,"موريتانيا","🇲🇷")
name = string.gsub(name,"فنزويلا","🇻🇪")
name = string.gsub(name,"جزر القمر","🇰🇲")
name = string.gsub(name,"الاردن","🇯🇴")
name = string.gsub(name,"عمان","🇴🇲")
name = string.gsub(name,"السويد","??🇪")
name = string.gsub(name,"المجر","🇭🇺")
name = string.gsub(name,"سويسرا","🇨🇭")
return send(msg_chat_id,msg_id,"⇜ اسرع واحد يرسل اسم العلم ( "..name.." )","md",true)  
end
end
if text == "عواصم" or text == "عاصمه" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
KlamSpeed = {
"الولايات المتحدة",
"روسيا",
"الصين",
"المانيا",
"إيطاليا",
"فرنسا",
"بريطانيا",
"اليابان",
"كوريا الجنوبية",
"إندونيسيا",
"المانيا",
"مصر",
"إيران",
"كولومبيا",
"تايلاند",
"بنغلادش",
"السعودية",
"العراق",
"فيتنام",
"إسبانيا",
"كوريا الشمالية",
"أفغانستان",
"إثيوبيا",
"أوكرانيا",
"تايوان",
"أوزبكستان",
"أذربيجان",
"رومانيا",
"فنزويلا",
"السودان",
"المغرب",
"بولندا",
"لبنان",
"قطر",
"الاردن",
"البحرين",
"النمسا",
"الجزائر",
"اليمن",
"ماليزيا",
"ليبيا",
"التشيك",
"بلغاريا",
"أرمينا",
"السنغال",
"السويد",
"هولندا",
"اليونان",
"موريتانيا",
"كازاخستان",
"كرواتيا",
"الإمارات",
"أستراليا",
"الهند",
"سويسرا",
"فلسطين",
"تركيا"
};
name = KlamSpeed[math.random(#KlamSpeed)]
send(msg_chat_id,msg_id,"⇜ اسرع واحد يرسل اسم العاصمة ( "..name.." )","md",true)  
name = string.gsub(name,"الولايات المتحدة","واشنطن")
name = string.gsub(name,"روسيا","موسكو")
name = string.gsub(name,"الصين","بكين")
name = string.gsub(name,"المانيا","برلين")
name = string.gsub(name,"إيطاليا","روما")
name = string.gsub(name,"فرنسا","باريس")
name = string.gsub(name,"بريطانيا","لندن")
name = string.gsub(name,"اليابان","طوكيو")
name = string.gsub(name,"كوريا الجنوبية","سيؤول")
name = string.gsub(name,"إندونيسيا","جاكارتا")
name = string.gsub(name,"المانيا","برلين")
name = string.gsub(name,"مصر","القاهرة")
name = string.gsub(name,"إيران","طهران")
name = string.gsub(name,"كولومبيا","بوغوتا")
name = string.gsub(name,"تايلاند","بانكوك")
name = string.gsub(name,"بنغلادش","دكا")
name = string.gsub(name,"السعودية","الرياض")
name = string.gsub(name,"العراق","بغداد")
name = string.gsub(name,"فيتنام","هانوي")
name = string.gsub(name,"إسبانيا","مدريد")
name = string.gsub(name,"كوريا الشمالية","بيونغ يانغ")
name = string.gsub(name,"أفغانستان","كابول")
name = string.gsub(name,"إثيوبيا","اديس ابابا")
name = string.gsub(name,"أوكرانيا","كييف")
name = string.gsub(name,"تايوان","تايبيه")
name = string.gsub(name,"أوزبكستان","طشقند")
name = string.gsub(name,"أذربيجان","باكو")
name = string.gsub(name,"رومانيا","بوخاريست")
name = string.gsub(name,"فنزويلا","كاراكاس")
name = string.gsub(name,"السودان","الخرطوم")
name = string.gsub(name,"المغرب","الرباط")
name = string.gsub(name,"بولندا","وارسو")
name = string.gsub(name,"لبنان","بيروت")
name = string.gsub(name,"قطر","الدوحة")
name = string.gsub(name,"الاردن","عمان")
name = string.gsub(name,"البحرين","المنامة")
name = string.gsub(name,"النمسا","فيينا")
name = string.gsub(name,"الجزائر","الجزائر")
name = string.gsub(name,"اليمن","صنعاء")
name = string.gsub(name,"ماليزيا","كوالالمبور")
name = string.gsub(name,"ليبيا","طرابلس")
name = string.gsub(name,"التشيك","براغ")
name = string.gsub(name,"بلغاريا","صوفيا")
name = string.gsub(name,"أرمينا","يريفان")
name = string.gsub(name,"السنغال","داكار")
name = string.gsub(name,"السويد","ستوكهولم")
name = string.gsub(name,"هولندا","امستردام")
name = string.gsub(name,"اليونان","اثينا")
name = string.gsub(name,"موريتانيا","نواكشوط")
name = string.gsub(name,"كازاخستان","استاتا")
name = string.gsub(name,"كرواتيا","زغرب")
name = string.gsub(name,"الإمارات","ابو ظبي")
name = string.gsub(name,"أستراليا","كانبرا")
name = string.gsub(name,"الهند","نيودلهي")
name = string.gsub(name,"سويسرا","برن")
name = string.gsub(name,"فلسطين","القدس")
name = string.gsub(name,"تركيا","انقره")
Redis:set(TheMero.."Mero:Game:ausm"..msg.chat_id,name)
return false
end
end
if Redis:get(TheMero.."Mero:Game:klmaa"..msg.chat_id) then
if text == Redis:get(TheMero.."Mero:Game:klmaa"..msg.chat_id) then
Redis:del(TheMero.."Mero:Game:klmaa"..msg.chat_id)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
end 
if text == "كلمات" or text == "كلمه" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
KlamSpeed = {
"مقاتل",
"سائق",
"غرفة",
"بطانية",
"طامس",
"شجاع",
"هاتف",
"تلكرام",
"مسافر",
"نعسان",
"بطيخ",
"عصبي",
"هادئ",
"عصير",
"دولمه",
"قدح",
"صباغ",
"كارتون",
"مدرسة",
"منزل",
"عاشق",
"فطور",
"مجموعة",
"اصدقاء",
"طلاب",
"فتيات",
"جميل",
"ذكي",
"فنان",
"نائم",
"دراجة",
"طائرة",
"صاروخ",
"الارض",
"الحلم",
"نبات",
"حيوان",
"انسان",
"دولة",
"حزين",
"سعيد",
"موظف",
"شركة",
"اتصال",
"حديقة",
"شارع",
"مستشفى",
"سيارة"
};
name = KlamSpeed[math.random(#KlamSpeed)]
send(msg_chat_id,msg_id,"⇜ اسرع واحد يكتب ( "..name.." )","md",true)  
Redis:set(TheMero.."Mero:Game:klmaa"..msg.chat_id,name)
return false
end
end

if text == 'عقاب' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
Redis:del(TheMero..'List_Ahkamm'..msg.chat_id)
Redis:del(TheMero..'members_Ahkamm'..msg.chat_id) 
Redis:set(TheMero.."raeahkamm"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(TheMero..'List_Ahkamm'..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(TheMero..'members_Ahkamm'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Start_Ahkamm"..msg.chat_id,3600,true)
local AkZilzal = '⇜ بدينا لعبة عقاب واضفت اسمك للعبة\n\n⇜ اللي يبي يلعب يرسل كلمة انا او يضغط الزر\n⇜ للانتهاء يرسل نعم اللي بدء العبة'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اضغط للانضمام', callback_data = '/Akab'},},}
local rep = msg.id/2097152/0.5
return https.request("https://api.telegram.org/bot"..Token..'/sendMessage?chat_id=' ..msg_chat_id.. '&text=' .. URL.escape(AkZilzal).."&reply_to_message_id="..rep..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))
end
if text == 'لاعبين عقاب' then
local list = Redis:smembers(TheMero..'List_Ahkamm'..msg.chat_id) 
local Text = 'قائمة لاعبين عقاب\nـــــــــــــــــــــــــــــــــــــــــــــــ\n\n' 
if #list == 0 then 
return bot.sendText(msg_chat_id,msg_id, '⇜ لا يوجد لاعبين بعد',"md")
end 
for k,v in pairs(list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
Text = Text..k.." *- اللاعـب »* ["..name.."](tg://user?id="..v..")\n"
end
return bot.sendText(msg_chat_id,msg_id,Text,"md")
end
if text == 'نعم' and Redis:get(TheMero.."Witting_StartGamehh"..msg.chat_id) then
rarahkam = Redis:get(TheMero.."raeahkamm"..msg.chat_id)
if tonumber(rarahkam) == msg.sender_id.user_id then
local list = Redis:smembers(TheMero..'List_Ahkamm'..msg.chat_id) 
if #list == 1 then 
return bot.sendText(msg.chat_id,msg.id,"⇜ لا استطيع بدء اللعبة بلاعب واحد فقط","md",true)
end 
local UserName = list[math.random(#list)]

local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '@['..UserId_Info.username..']'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:sadd(TheMero.."kk_Akab"..msg.chat_id,UserId_Info.id)
Redis:srem(TheMero..'members_Ahkamm'..msg_chat_id,UserId_Info.id) 
local GetLike = Redis:incrby(TheMero.."Num:Add:Akab"..msg.chat_id..UserId_Info.id, 1) 
Redis:hset(TheMero..':GroupUserCountAkab:'..msg.chat_id,UserId_Info.id,GetLike)
local UserrrInfo = bot.getUser(UserName) 
if UserrrInfo.first_name then
NameLUser = UserrrInfo.first_name
else
NameLUser = UserrrInfo.first_name
end
NameLUser = NameLUser
NameLUser = NameLUser:gsub("]","")
NameLUser = NameLUser:gsub("[[]","")
Redis:hset(TheMero..':GroupAkabNameUser:'..msg.chat_id,UserId_Info.id,NameLUser)
Redis:del(TheMero..'raeahkamm'..msg.chat_id) 
Redis:del(TheMero..'List_Ahkamm'..msg.chat_id) 
Redis:del(TheMero.."Witting_StartGamehh"..msg.chat_id)
Redis:del(TheMero.."Start_Ahkamm"..msg.chat_id)
katu = {
"*روح الى اي قروب عندك واكتب اي شيء يطلبه منك اللاعبين الحد الاقصى 3 رسائل*.",
"*قول نكتة ولازم احد الاعبين يضحك اذا ماضحك يعطونك كتم الى ان يجي دورك مرة ثانية*.",
"*سمعنا صوتك و غن اي اغنية من اختيار الاعبين الي معك*.",
"*ذي المرة لك لا تعيدها*.",
"*صور اي شيء يطلبه منك الاعبين*.",
"*سكر خشمك و قول كلمة من اختيار الاعبين الي معك*.",
"*روح عند اي احد بالخاص و قول له انك تحبه و الخ*.",
"*اكتب في الشات اي شيء يطلبه منك الاعبين في الخاص*.",
"*قول نكتة اذا و لازم احد الاعبين يضحك اذا محد ضحك يعطونك ميوت الى ان يجي دورك مرة ثانية*.",
"*سامحتك خلاص مافيه عقاب لك *.",
"*غير اسمك الى اسم من اختيار الاعبين الي معك*.",
"*منشن الجميع وقل انا اكرهكم*.",
"*قول لاي بنت موجود في المجموعـة كلمة حلوه*.",
"*قول قصيدة *.",
"*سامحتك خلاص مافيه عقاب لك *.",
"*تاخذ عقابين*.",
"*اذا انت ولد اكسر اغلى او احسن عطور عندك اذا انتي بنت اكسري الروج حقك او الميك اب حقك*.",
"*اذهب الى واحد ماتعرفه وقل له انا كيوت وابي بوسه*.",
"* تروح عند شخص وقول له احبك*."
}
name = katu[math.random(#katu)]
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'كتم الخاسر', data = '/akabmute'},},}}
return bot.sendText(msg_chat_id,msg_id,'⇜ تم اختيار : '..ls..' لمعاقبته\n\n⇜ العقوبة هي : ( '..name..' ) \n⇜ تستطيع كتم الخاسر اذا لم ينفذ الحكم', 'md', true, false, reply_markup)
end
end
------------------------------------------
if text == 'احكام' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
local zzllzz = '⇜ بدينا لعبة احكام واضفت اسمك\n\n⇜ اللي يبي يلعب يضغط الزر بالاسفل'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/joineahkam'},
},
}
}
Redis:del(TheMero..'List_Ahkkam'..msg.chat_id)
Redis:set(TheMero.."raeahkkam"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(TheMero..'List_Ahkkam'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Start_Ahkkam"..msg.chat_id,3600,true)
bot.sendText(msg_chat_id,msg_id,zzllzz,"md",false, false, false, false, reply_markup)
end
-------------------------------------------
if text == 'كرسي' or text == 'كرسي الاعتراف' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
local Quuiz = Redis:get(TheMero.."Quiz:Add:Koorsy"..msg.chat_id) or 0
if tonumber(Quuiz) < tonumber(10) and Quuiz ~= 0 then 
return bot.sendText(msg.chat_id,msg.id, "⇜ هنالك لعبة كرسي جارية حاليا\n⇜ ارسل (تصفير كرسي) للبدء من جديد","md",true)  
end
local zzllzz = '⇜ بدينا لعبة كرسي الاعتراف واضفت اسمك\n\n⇜ اللي يبي يلعب يرسل كلمة (انا) او يضغط الزر\n⇜ للانتهاء يرسل (نعم) اللي بدأ اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/Koorsy'},
},
}
}
Redis:del(TheMero..'List_Koorsi'..msg.chat_id)
Redis:del(TheMero.."Quiz:Add:Koorsy"..msg.chat_id)
Redis:set(TheMero.."raekoorsi"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(TheMero..'List_Koorsi'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Start_Koorsi"..msg.chat_id,3600,true)
bot.sendText(msg_chat_id,msg_id,zzllzz,"md",false, false, false, false, reply_markup)
end
----------------------------------------
if text == 'صراحه' or text == 'صراحة' or text == 'صارحني' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
local Qiuiz = Redis:get(TheMero.."Quiz:Add:Saraha"..msg.chat_id) or 0
if tonumber(Qiuiz) < tonumber(5) and Qiuiz ~= 0 then 
return bot.sendText(msg.chat_id,msg.id, "⇜ هنالك لعبة صراحة جارية حاليا\n⇜ ارسل (تصفير صراحه) للبدء من جديد","md",true)  
end
local zzllzz = '⇜ بدينا لعبة المصارحه واضفت اسمك\n\n⇜ اللي يبي يلعب يرسل كلمة (انا) او يضغط الزر\n⇜ للانتهاء يرسل (نعم) اللي بدأ اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/Sarraha'},
},
}
}
Redis:del(TheMero..'List_Saraha'..msg.chat_id)
Redis:del(TheMero.."Quiz:Add:Saraha"..msg.chat_id)
Redis:set(TheMero.."raesaraha"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(TheMero..'List_Saraha'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Start_Saraha"..msg.chat_id,3600,true)
bot.sendText(msg_chat_id,msg_id,zzllzz,"md",false, false, false, false, reply_markup)
end
----------------------------------
if text == "تصفير كرسي" then 
Redis:del(TheMero.."Quiz:Add:Koorsy"..msg.chat_id)
return bot.sendText(msg_chat_id,msg_id, "*✦┊تم تصفيـر لعبـة كرسـي الاعتـراف .. بنجـاح ✓\n✦┊ارسـل الان ⇜ (كرسي) لـ بـدء اللعبـه*","md",true)  
end
if text == "تصفير صراحه" then 
Redis:del(TheMero.."Quiz:Add:Saraha"..msg.chat_id)
return bot.sendText(msg_chat_id,msg_id, "*✦┊تم تصفيـر لعبـة صـارحني بسـريـه .. بنجـاح ✓\n✦┊ارسـل الان ⇜ (صراحه) لـ بـدء اللعبـه*","md",true)  
end

if text == 'اكتموه' and msg.reply_to_message_id ~= 0 then
if not Redis:get(TheMero.."Status:Aktmooh"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id,"⇜ مايمديك تصوت على كتم احد\n⇜ امر اكتموه معطل","md",true)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local ban = bot.getUser(Message_Reply.sender_id.user_id)
if ban.id == 779108237 then
return bot.sendText(msg_chat_id,msg_id,'⇜ مايمديك تكتب بوب',"md",true) 
elseif ban.id == Sudo_Id then
return bot.sendText(msg_chat_id,msg_id,'⇜ هـييهه .. مايمديك تكتم المطور الاساسي',"md",true) 
end
local Name = '['..ban.first_name..'](tg://user?id='..ban.id..')' or 'لا يوجد اسم'
local RinkBot = Controller(msg_chat_id,Message_Reply.sender_id.user_id)
local zzllzz = '- المستخدم : '..Name..'\n- رتبته '..RinkBot..'\n- هل توافقون على كتمه\n\n-المطلوب 3 اصوات'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للتصويت', data = '/Aktmooh'},
},
}
}
Redis:set(TheMero.."Ak_Tmooh"..msg.chat_id,Message_Reply.sender_id.user_id)
Redis:del(TheMero..'List_Aktooh'..msg.chat_id)
Redis:set(TheMero.."raeaktooh"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(TheMero..'List_Aktooh'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(TheMero.."Start_Aktmooh"..msg.chat_id,3600,true)
bot.sendText(msg_chat_id,msg_id,zzllzz,"md",false, false, false, false, reply_markup)
end

if text == "اضف سؤال جمل" then
if not msg.ControllerBot then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(1)..' ) ',"md",true)  
end
Redis:set(TheMero.."makal:bots:set"..msg.sender_id.user_id..":"..msg.chat_id,true)
return send(msg_chat_id,msg_id,"⇜ ارسل السؤال الان ")
end
if text == "مسح سؤال جمل" then
if not msg.ControllerBot then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(1)..' ) ',"md",true)  
end
Redis:set(TheMero.."makal:bots:del"..msg.sender_id.user_id..":"..msg.chat_id,true)
return send(msg_chat_id,msg_id,"⇜ ارسل لي السؤال")
end
if text == "مسح الجمل" then
if not msg.ControllerBot then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(1)..' ) ',"md",true)  
end
Redis:del(TheMero.."makal:bots")
return send(msg_chat_id,msg_id,"⇜ تم مسح الجمل")
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."makal:bots:del"..msg.sender_id.user_id..":"..msg.chat_id) == "true" then
Redis:set(TheMero.."makal:bots:del"..msg.sender_id.user_id..":"..msg.chat_id,"true1uu")
Redis:srem(TheMero.."makal:bots", text)
return send(msg_chat_id,msg_id, '\n⇜ تم مسح السؤال')
end
end
if text and text:match("^(.*)$") then
if Redis:get(TheMero.."makal:bots:set"..msg.sender_id.user_id..":"..msg.chat_id) == "true" then
Redis:set(TheMero.."makal:bots:set"..msg.sender_id.user_id..":"..msg.chat_id,"true1uu")
Redis:sadd(TheMero.."makal:bots", text)
return send(msg_chat_id,msg_id, '\n⇜ تم حفظ السؤال ')
end
end
if text == 'جمل' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
local list = {
"الممكن/والمستطاع*يقيم في/أحلام العاجز",
"الكلمة اللينة*تصريح/بالدخول*إلى القلوب",
" حاسبوا/أنفسكم*أولاً ثم/غيركم",
"زمان/أطفالكم*غير/زمانكم",
" من السهل*أن تصبح/عاقل بعد فوات*الأوان",
" فانظر*إليها بقلبك/وليس*بعينيك",
"خاف/الله*أينما/كنت",
"أحسن/لقول ما*نطق بالعدل/والحق",
"أن تحافظ على/رجولتك خير من*حفاظك على أموالك",
"أكثروا*الرزق/بالصدقة",
"غالبا*ماتصبح/البيضة/سلاحا",
"كن*عادلاً/قبل أن*تكون*كريماً",
"كلما أحب/الشخص*نفسه كلما*كره الناس",
"من يسخر/من المرض*هو من لا يشعر/بالألم.",
"يظن*الرجل أنه*حكيم/إذا قلت*حكمته.",
 "اللسان/ليس سلاح*لكنه/يقتل*القلب",
"أسد مفترس*أمام عينيك/خير من*ثعلب خائن وراء/ظهرك",
"لسان*لعاقل وراء قلبه*وقلب الأحمق/وراء لسانه",
"أحقر الناس*من لا يقدر*على/كتمان السر",
" جميع/لصفات*الحميدة*تتلخص/في العدل",
" أفضل/عناصر*العدل هي/محاسبة*النفس",
"لم يعرف*الناس العدل/إلا بوجود*الظلم",
"العدل*ميزان/الملك",
"سيف*العدالة*لا ينام/ولا*يسهو",
"لا تلجأ*إلى ظالم*لكي ينصرك/على ظالم، فتكون*فريسة/هما",
"تحدثوا مع*الناس/على حسب*عقولهم",
" لو أنصت*الجاهل/ما اختلف*الناس",
"إذا تم*العقل قل/الكلام",
" لا تعد/ما لا تستطيع*الوفاء*به",
" القليل من*الطعام*يجلب/النوم*المريح",
"كرم المفسد*رشوة/لجلب*المنفعة",
"يدوم*الحال/بالرضا*والصبر",
" تتفاقم*المحن/عندما تكثر*الفتن",
"ربما*انفرج/الامر إذا/ضاق",
"سامح*الناس/قبل أن*تسامح/نفسك",
"شر الناس*من*خاف/الناس/من شره",
"قلب*العاقل/صندوق*أسراره",
"ضربة*اللسان أسوأ/من طعنة*السيف",
"من/سار على*الدرب/وصل",
"الدهر*يومان*يوم لك/ويوم*عليك",
" لا تدع/عاطفتك*تخسرك/نفسك",
"كن*قويا/لأجل/نفسك",
"ما يستهلك*عقلك/يسيطر على/حياتك"
}
if #list ~= 0 then
quschen = list[math.random(#list)]
quschen1 = string.gsub(quschen,"-"," ")
quschen1 = string.gsub(quschen1,"*"," ")
quschen1 = string.gsub(quschen1,"•"," ")
quschen1 = string.gsub(quschen1,"_"," ")
quschen1 = string.gsub(quschen1,","," ")
quschen1 = string.gsub(quschen1,"/"," ")
print(quschen1)
send(msg_chat_id,msg_id,'⇜ اسرع واحد يكتبها بدون اشارات :\n\n['..quschen..'] \n✧',"md")
Redis:set(TheMero.."makal:bots:qus"..msg.chat_id,quschen1)
Redis:setex(TheMero.."mkal:setex:" .. msg.chat_id .. ":" .. msg.sender_id.user_id, 60, true) 
end
end
end
if text == ""..(Redis:get(TheMero.."makal:bots:qus"..msg.chat_id) or '').."" then
local timemkall = Redis:ttl(TheMero.."mkal:setex:" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
local timemkal = (60 - timemkall)
if tonumber(timemkal) == 1 then
send(msg_chat_id,msg_id,'  استمر ي وحش ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 2 then
send(msg_chat_id,msg_id,'  اكيد محد ينافسك ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 3 then
send(msg_chat_id,msg_id,'  اتوقع محد ينافسك ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 4 then
send(msg_chat_id,msg_id,'  مركب تيربو !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 5 then
send(msg_chat_id,msg_id, '  صح عليك !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 6 then
send(msg_chat_id,msg_id,'   صحيح !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 7 then
send(msg_chat_id,msg_id,'   شد حيلك ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 8 then
send(msg_chat_id,msg_id, '  عندك اسرع ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 9 then
send(msg_chat_id,msg_id,'   يجي ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 10 then
send(msg_chat_id,msg_id,'   كفو ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 11 then
send(msg_chat_id,msg_id,'   ماش !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 12 then
send(msg_chat_id,msg_id,'   مستوى مستوى !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 13 then
send(msg_chat_id,msg_id,'   تدرب ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 14 then
send(msg_chat_id,msg_id,'   مدري وش اقول ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 15 then
send(msg_chat_id,msg_id,'   بطه ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 16 then
send(msg_chat_id,msg_id,'   ي بطوط !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 17 then
send(msg_chat_id,msg_id,'   مافي اسرع  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 18 then
send(msg_chat_id,msg_id,'   بكير  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 19 then
send(msg_chat_id,msg_id,'   وش هذا !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 20 then
send(msg_chat_id,msg_id,'   الله يعينك !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 21 then
send(msg_chat_id,msg_id,'   كيبوردك يعلق ههههه  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 22 then
send(msg_chat_id,msg_id,'   يبي لك تدريب  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 23 then
send(msg_chat_id,msg_id,'   انت اخر واحد رسلت وش ذا !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 24 then
send(msg_chat_id,msg_id,'   ههههه بطى !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 25 then
send(msg_chat_id,msg_id,'   ابك وش العلم !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 26 then
send(msg_chat_id,msg_id,'  اخر مرا تلعب !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 27 then
send(msg_chat_id,msg_id,'   ي بطيء !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 28 then
send(msg_chat_id,msg_id,'   ليه انت بطيء يخوي !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 29 then
send(msg_chat_id,msg_id,'   تدبر زين بس  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 30 then
send(msg_chat_id,msg_id,'  مستوى بس !  \n عدد الثواني ( '..timemkal..' )\n✧')
end
Redis:del(TheMero.."makal:bots:qus"..msg.sender_id.user_id..":"..msg.chat_id)
Redis:del(TheMero.."mkal:setex:" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
end
if text =="صراحه" then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
local list = {
"صراحه  |  متى آخر مرة قمت بعمل مُشكلة كبيرة وتسببت في خسائر؟",
"صراحه  |  ‌‏إذا أحد قالك كلام سيء بالغالب وش تكون ردة فعلك؟",
"صراحه  | هل جرحت شخص تحبه من قبل ",
"صراحه  |  ما هو الشخص الذي تحلم به كل ليلة",
"صراحه  |  أحيانا احس ان الناس ، كمل؟" ,
"صراحه  |  أنا شخص ضعيف عندما",
"‏صراحه  |  هل خجلت من نفسك من قبل؟",
"صراحه  |  تقيم حظك ؟ من عشره؟",
"صراحه  |  متى اخر مره بكيت؟",
"صراحه  |  هل تعرضت إلى موقف مُحرج جعلك تكره صاحبهُ",
"صراحه  |  ما هو عمرك الحقيقي؟",
"صراحه  |  ما هو اسوأ خبر سمعته بحياتك؟",
"صراحه  |  هل قمت بالبكاء أمام من تُحب؟",
"صراحه  |  غيرتك هاديه ولا تسوي مشاكل؟",
"صراحه  |  هل تعتقد ان حظك سيئ؟",
"صراحه  |  كيفية الكشف عن من يكمن عليك؟",
"صراحه  |  ‏هل تحب إظهار حبك وتعلقك بالشخص أم ترى ذلك ضعف؟",
"صراحه  |  وش ناوي تسوي اليوم؟",
"صراحه  |  شخص معك بالحلوه والمُره؟",
"صراحه  |  هل تُتقن عملك أم تشعر بالملل؟",
"صراحه  |  شـخــص تتمنــي الإنتقــام منـــه؟",
"صراحه  |  صفة تحبها في نفسك؟",
"‏صراحه  | هل تحب عائلتك ام تكرههم؟",
"صراحه  |  ‏هل تحب إظهار حبك وتعلقك بالشخص أم ترى ذلك ضعف؟",
"‏!صراحه  |  ما اكثر شي مدمن عليه",
"صراحه  |  الكُره العظيم دايم يجي بعد حُب قوي تتفق؟",
"صراحه  |  ما هي أمنياتك المُستقبلية؟‏",
"صراحه  |  ‏تجامل أحد على راحتك؟",
"صراحه  |  ‏الفقر فقر العقول ليس الجيوب  ، تتفق؟",
"صراحه  |  ما هو ا الحلم  الذي لم تستطيع ان تحققه؟",
"صراحه  |  اي الدول تتمنى ان تزورها؟",
"صراحه  |  كلمة تود سماعها كل يوم؟",
"صراحه  |  تصلي صلواتك الخمس كلها؟",
"صراحه  | هل حياتك سعيدة أم حزينة؟",
"صراحه  |  هل قمت بانتحال أحد الشخصيات لتكذب على من حولك؟",
"متى كانت آخر مرة اعتذرت فيها؟ لماذا؟",
"صراحه  | هل توجد خرافة أو مقولة غريبة تؤمن بها؟ وما هي؟",
"صراحه  | ما أغرب شائعة سمعتها عن نفسك؟",
",‏صراحه  | ما هو أغرب سبب لانفصالك عن أحد ارتبطت به من قبل؟",
"‏صراحه  | هل قمت بادعاء المرض لعدم الذهب لحفلة أو موعد عمل من قبل؟",
"‏صراحه  | إذا كان عليك العودة إلى حبيبك السابق لمدة يوم واحد، هل تفعل ذلك أم لا؟",
"‏صراحه  | من هو أقرب صديق لديك؟",
"‏صراحه  | ما هو آخر شئ قمت بشرائه وندمت عليه؟",
"‏صراحه  | هل قمت بالارتباط بشخص يكبرك في السن بفارق كبير من قبل، وما سبب انفصالكما؟",
"صراحه  | من هو الشخص الذي قد تقدم له حياتك دون تفكير؟!",
"صراحه  | هل تتذكر آخر مرة قمت بالاعتذار وأنت غير مقتنع أنك على خطأ؟",
"‏صراحه  | في هذه المرة كذب لإنقاذ الموقف.. تتذكر هذا الموقف؟",
"صراحه  | هل أنت عقلاني/ رومانسي؟",
"‏صراحه  | في هذا الوقت شعرت بالندم على تفويت هذه الفرصة.. فما هى؟",
"صراحه  | أردت أن أتزوجها ولكن وجدت انها..؟",
"صراحه  | في كلمة واحدة الحب هو..؟",
"صراحه  | جملة لا تنساها من شخص عزيز؟",
"صراحه  | صف نفسك في كلمة واحدة أنا شخص حكيم/ متهور؟",
"‏صراحه  | لم أتوقع أن أنجذب إلى هذا الشخص.. فمن هو/ هي؟"
}
local kter = list[math.random(#list)]
return send(msg_chat_id,msg_id,'['..kter..']',"md")
end
end
if text == 'اسالني' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero..'lock_geams'..msg.chat_id) then
local list = Redis:smembers(TheMero.."gamebot:new1")
if #list ~= 0 then
local quschen = list[math.random(#list)]
local ansar1 = Redis:get(TheMero.."gamebot:newqus:as1"..quschen)
local ansar2 = Redis:get(TheMero.."gamebot:newqus:as2"..quschen)
local ansar3 = Redis:get(TheMero.."gamebot:newqus:as3"..quschen)
local ansar0 = Redis:get(TheMero.."gamebot:newqus:as0"..quschen)
local ansar4 = Redis:get(TheMero.."gamebot:newqus:as4"..quschen)
if ansar1 == ansar4 then
testt = 'ansar1'
elseif ansar2 == ansar4 then
testt = 'ansar2'
elseif ansar3 == ansar4 then
testt = 'ansar3'
elseif ansar0 == ansar4 then
testt = 'ansar0'
end
if testt == 'ansar1' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = ansar1, data = 'صح'},{text = ansar2, data = 'خطأ'}, 
},
{
{text = ansar3, data = 'خطأ'},{text = ansar0, data = 'خطأ'}, 
},
}
}
send(msg_chat_id,msg_id,quschen,"md",false, false, false, false, reply_markup)
elseif testt == 'ansar2' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = ansar1, data = 'خطأ'},{text = ansar2, data = 'صح'}, 
},
{
{text = ansar3, data = 'خطأ'},{text = ansar0, data = 'خطأ'}, 
},
}
}
send(msg_chat_id,msg_id,quschen,"md",false, false, false, false, reply_markup)
elseif testt == 'ansar3' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = ansar1, data = 'خطأ'},{text = ansar2, data = 'خطأ'}, 
},
{
{text = ansar3, data = 'صح'},{text = ansar0, data = 'خطأ'}, 
},
}
}
send(msg_chat_id,msg_id,quschen,"md",false, false, false, false, reply_markup)
elseif testt == 'ansar0' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = ansar1, data = 'خطأ'},{text = ansar2, data = 'خطأ'}, 
},
{
{text = ansar3, data = 'خطأ'},{text = ansar0, data = 'صح'}, 
},
}
}
send(msg_chat_id,msg_id,quschen,"md",false, false, false, false, reply_markup)
end
end
end
end
if text == "اضف لغز" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)
end
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,true)
return send(msg_chat_id,msg_id,"⇜ ارسل اللغز الان ")
end
if text == "مسح لغز" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
Redis:set(TheMero.."lkz:gamebot:new"..msg.sender_id.user_id..":"..msg.chat_id,'truedel')
return send(msg_chat_id,msg_id,"⇜ ارسل اللغز الان ")
end
if text == 'الالغاز' or text == 'الغاز' then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
local list = Redis:smembers(TheMero.."lkz:gamebot:new1")
t = "⇜ الالغاز : \n"
for k,v in pairs(list) do
t = t..""..k.."- "..v.."\n"
end
if #list == 0 then
t = "⇜ لا يوجد الغاز"
end
return send(msg_chat_id,msg_id,t)
end
if text == 'مسح الالغاز' then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
Redis:del(TheMero.."lkz:gamebot:new1")
return send(msg_chat_id,msg_id,'⇜ تم مسح الالغاز ')
end
if text == 'لغز' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero..'lock_geams'..msg.chat_id) then
local list = Redis:smembers(TheMero.."lkz:gamebot:new1")
if #list ~= 0 then
local quschen = list[math.random(#list)]
local ansar1 = Redis:get(TheMero.."lkz:gamebot:newqus:as1"..quschen)
local ansar2 = Redis:get(TheMero.."lkz:gamebot:newqus:as2"..quschen)
local ansar3 = Redis:get(TheMero.."lkz:gamebot:newqus:as3"..quschen)
local ansar4 = Redis:get(TheMero.."lkz:gamebot:newqus:as4"..quschen)
if ansar1 == ansar4 then
tt = 'ansar1'
elseif ansar2 == ansar4 then
tt = 'ansar2'
elseif ansar3 == ansar4 then
tt = 'ansar3'
end
print(tt)
if tt == 'ansar1' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = ansar1, data = 'صح1'},
},
{
{text = ansar2, data = 'خطأ1'},
},
{
{text = ansar3, data = 'خطأ1'},
},
}
}
send(msg_chat_id,msg_id,quschen,"md",false, false, false, false, reply_markup)
elseif tt == 'ansar2' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = ansar1, data = 'خطأ1'},
},
{
{text = ansar2, data = 'صح1'},
},
{
{text = ansar3, data = 'خطأ1'},
},
}
}
send(msg_chat_id,msg_id,quschen,"md",false, false, false, false, reply_markup)
elseif tt == 'ansar3' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = ansar1, data = 'خطأ1'},
},
{
{text = ansar2, data = 'خطأ1'},
},
{
{text = ansar3, data = 'صح1'},
},
}
}
send(msg_chat_id,msg_id,quschen,"md",false, false, false, false, reply_markup)
end

end
end
end
if text == 'اسئله كت' then
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return false
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.DevelopersQ then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(2)..' ) ',"md",true)  
end
local list = Redis:smembers(TheMero.."gamebot:List:Manager")
t = "⇜ الاسئله المضافه : \n"
for k,v in pairs(list) do
t = t..""..k.."- (["..v.."])\n"
end
if #list == 0 then
t = "⇜ لا يوجد اسئله"
end
return send(msg_chat_id,msg_id,t,'md')
end
if text == 'مسح اسئله كت' then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.ControllerBot then 
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(1)..' ) ',"md",true)  
end
local list = Redis:smembers(TheMero.."gamebot:List:Manager")
if #list == 0 then
send(msg_chat_id,msg_id,"⇜ لا يوجد اسئله")
end
Redis:del(TheMero.."gamebot:List:Manager")
send(msg_chat_id,msg_id,'⇜ تم مسح الاسئله')
end
if text == ("مسح الكيك") or text == ("مسح قائمه الكيك") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:tahaath'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي كيكات" )
end
Redis:del(TheMero..'mero:tahaath'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة الكيك وعددهم ( "..numtsh.." ) ")
elseif text == ("مسح العسل") or text == ("مسح قائمه العسل") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:klp'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي عسلات" )
end
Redis:del(TheMero..'mero:klp'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة العسل وعددهم ( "..numtsh.." ) ")
elseif text == ("مسح الزق") or text == ("مسح الزقات") or text == ("مسح قائمه الزق") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:donke'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي زقات" )
end
Redis:del(TheMero..'mero:donke'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة الزق وعددعم ( "..numtsh..") ")
elseif text == ("مسح الحمير") or text == ("مسح قائمه الحمير") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:zahf'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي حمير" )
end
Redis:del(TheMero..'mero:zahf'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة الحمير وعددهم ( "..numtsh.." )")
elseif text == ("مسح البقر") or text == ("مسح قائمه البقر") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:sakl'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي بقر" )
end
Redis:del(TheMero..'mero:sakl'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة البقر وعددهم ( "..numtsh.." ) ")
elseif text == ("مسح قائمه قلبي") or text == ("مسح قلبي") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:klpe'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي احد بقلبك" )
end
Redis:del(TheMero..'mero:klpe'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة قلبي وعددهم ( "..numtsh.." ) ")
elseif text == ("مسح الكلاب") or text == ("مسح قائمه الكلاب") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:tagge'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي كلاب" )
end
Redis:del(TheMero..'mero:tagge'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة الكلاب وعددهم ( "..numtsh.." ) ")
elseif text == ("مسح الهطوف") or text == ("مسح قائمه الهطوف") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:mrtee'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي هطوف" )
end
Redis:del(TheMero..'mero:mrtee'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة الهطوف وعددهم ( "..numtsh.." )")
elseif text == ("مسح القرود") or text == ("مسح قائمه القرود") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:loke'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي قرود" )
end
Redis:del(TheMero..'mero:loke'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة القرود وعددهم ( "..numtsh.." ) ")
elseif text == ("مسح الخرفان") or text == ("مسح قائمه الخرفان") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not msg.Managers then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(6)..' ) ',"md",true)  
end
local numtsh = Redis:scard(TheMero..'mero:stope'..msg.chat_id)
if numtsh ==0 then  
return send(msg_chat_id,msg_id, "⇜ مافي خرفان" )
end
Redis:del(TheMero..'mero:stope'..msg.chat_id)
return send(msg_chat_id,msg_id, "⇜ ابشر مسحت قائمة الخرفان وعددهم ( "..numtsh.." ) ")
end
if text == "نسبه الحب" or text == "نسبه حب" or text == "نسبة الحب" and msg.reply_to_message_id ~= 0 then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
Redis:set(TheMero..":"..msg.sender_id.user_id..":lov_Bots"..msg.chat_id,"sendlove")
hggg = '⇜ الان ارسل اسمك واسم الشخص الثاني'
send(msg_chat_id,msg_id,hggg) 
return false
end
end
if text == "نسبه الغباء" or text == "نسبه الغباء" and msg.reply_to_message_id ~= 0 then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
Redis:set(TheMero..":"..msg.sender_id.user_id..":lov_Bottts"..msg.chat_id,"sendlove")
hggg = '⇜ الان ارسل اسم الشخص '
send(msg_chat_id,msg_id,hggg) 
return false
end
end
if text == "نسبه الذكاء" or text == "نسبه الذكاء" and msg.reply_to_message_id ~= 0 then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
Redis:set(TheMero..":"..msg.sender_id.user_id..":lov_Botttuus"..msg.chat_id,"sendlove")
hggg = '⇜ الان ارسل اسم الشخص '
send(msg_chat_id,msg_id,hggg) 
return false
end
end
if text == "نسبه الكره" or text == "نسبه كره" and msg.reply_to_message_id ~= 0 then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
Redis:set(TheMero..":"..msg.sender_id.user_id..":krh_Bots"..msg.chat_id,"sendkrhe")
hggg = '⇜ الان ارسل اسمك واسم الشخص الثاني '
send(msg_chat_id,msg_id,hggg) 
return false
end
end
if text == "نسبه الرجوله" or text == "نسبه الرجوله" and msg.reply_to_message_id ~= 0 then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
Redis:set(TheMero..":"..msg.sender_id.user_id..":rjo_Bots"..msg.chat_id,"sendrjoe")
hggg = '⇜ الان ارسل اسم الشخص '
send(msg_chat_id,msg_id,hggg) 
return false
end
end
if text == "نسبه الانوثه" or text == "نسبه انوثه" or text == "نسبة الانوثة" and msg.reply_to_message_id ~= 0 then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
Redis:set(TheMero..":"..msg.sender_id.user_id..":ano_Bots"..msg.chat_id,"sendanoe")
hggg = '⇜ الان ارسل اسم الشخص '
send(msg_chat_id,msg_id,hggg) 
return false
end
end
if text== "رفع كيكه" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:tahaath"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته كيكه 🍰\n✧️")
elseif text== "تنزيل كيكه" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:tahaath"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من كيكه\n✧")
elseif text== "رفع عسل" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:klp"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته عسل 🍯\n✧")
elseif text== "رفع زق"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:donke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته زق 💩\n✧️")
elseif text== "تنزيل زق"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:donke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من زق\n✧️")
elseif text== "تنزيل عسل"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:klp"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من عسل\n✧️")
elseif text== "تنزيل حمار"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:zahf"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته حمار\n✧️")
elseif text== "رفع حمار"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:zahf"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته حمار 🦓\n✧️")
elseif text== "رفع بقره" or text== "رفع بقرة" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:sakl"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته بقره 🐄\n✧")
elseif text== "تنزيل بقره" or text== "تنزيل بقرة" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:sakl"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من بقرة\n✧️")
elseif text== "رفع بقلبي" or text== "رفع لقلبي" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:klpe"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته لقلبك ❤️\n✧️")
elseif text== "تنزيل من قلبي"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then  
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:klpe"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من قلبك\n✧")
elseif text== "رفع كلب"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:tagge"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته كلب 🐩️ \n✧️")
elseif text== "تنزيل كلب"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:tagge"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من كلب\n✧")
elseif text== "رفع هطف" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:mrtee"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته هطف 🧱\n✧")
elseif text== "تنزيل هطف"  and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:mrtee"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من هطف\n✧")
elseif text== "رفع قرد" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:loke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته قرد 🐒\n✧️")
elseif text== "تنزيل قرد" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:loke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من قرد\n✧")
elseif text== "رفع خروف" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then    
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(TheMero.."mero:stope"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر رفعته خاروف 🐏\n✧️")
elseif text== "تنزيل خاروف" and msg.reply_to_message_id and not Redis:get(TheMero.."trfeh"..msg.chat_id) then  
  if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(TheMero.."mero:stope"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg_chat_id,msg_id,"⇜ ابشر نزلته من خاروف\n✧")
elseif text == ("قائمه الكيك") or text == ("قائمة الكيك") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:tahaath"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد كيكات") end
t = "\n⇜ قائمة الكيك 🍰\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه العسل") or text == ("قائمة العسل") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:klp"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد عسل") end
t = "\n⇜ قائمة العسل 🍯\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه الزق") or text == ("قائمة الزق") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:donke"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد زقات") end
t = "\n⇜ قائمة الزق 💩\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه الحمير") or text == ("قائمة الحمير") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:zahf"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد حمير") end
t = "\n⇜ قائمة الحمير 🦓\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه البقر") or text == ("قائمة البقر") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:sakl"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد بقر") end
t = "\n⇜ قائمة البقر 🐄\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه قلبي") or text == ("قائمة قلبي") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:klpe"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد احد بقلبك") end
t = "\n⇜ قائمة قلبي ❤️\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه الكلاب") or text == ("قائمة الكلاب") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:tagge"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد كلاب") end
t = "\n⇜ قائمة الكلاب 🐩\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه الهطف") or text == ("قائمة الهطف") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:mrtee"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد هطف") end
t = "\n⇜ قائمة الهطف 🧱\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه القرود") or text == ("قائمة القرود") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:loke"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد قرود") end
t = "\n⇜ قائمة القرود 🐒\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
elseif text == ("قائمه الخرفان") or text == ("قائمة الخرفان") then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(TheMero.."mero:stope"..msg.chat_id)
if #list == 0 then return send(msg_chat_id,msg_id, "⇜ لا يوجد خرفان") end
t = "\n⇜ قائمة الخرفان 🐏\n━━━━━━━━\n"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.." ➣ "..username.."\n"
if #list == k then
return send(msg_chat_id,msg_id, t)
end
end
end
if text == "زوجني" or text == "زوجيني" then 
if not Redis:get(TheMero.."Mero:Alzwag:Chat"..msg_chat_id) then
return send(msg_chat_id,msg_id,"⇜ امر زوجني معطل ياحلو","md",true)
end 
local Info_Chats = bot.getSupergroupFullInfo(msg_chat_id)
local chat_Members = bot.searchChatMembers(msg_chat_id, "*", Info_Chats.member_count).members
local rand_members = math.random(#chat_Members)
local member_id = chat_Members[rand_members].member_id.user_id
local member_name = bot.getUser(chat_Members[rand_members].member_id.user_id).first_name
local mem_tag = "["..member_name.."](tg://user?id="..member_id..")"
if tonumber(member_id) == tonumber(msg.sender_id.user_id) or tonumber(member_id) == tonumber(TheMero) or bot.getUser(member_id).type.luatele == "userTypeBot" or Redis:get(TheMero..msg_chat_id..member_id.."mtzwga:") then 
return send(msg_chat_id,msg_id,"⇜ اسف ياحلو مو وقت زواج الحين","md")
end
if Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then
    local zwg_id =  Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
    local zwg_info = bot.getUser(zwg_id)
    return send(msg_chat_id,msg_id,"⇜ لحظة انادي لك زوجتك\n「["..zwg_info.first_name.."](tg://user?id="..zwg_id..")」\n⇜ وينك ياحلوه يبي يتزوج عليك","md")
end
local reply_markup = bot.replyMarkup{
  type = 'inline',
  data = {
  {
  {text = 'موافق', data = msg.sender_id.user_id..'/yes_zw/'..member_id},
  {text = 'مو موافق', data = msg.sender_id.user_id..'/no_zw/'..member_id},
  },
  }
  }
return send(msg_chat_id,msg_id,"⇜ اخترت لك عروسه「 "..mem_tag.." 」شرايك فيها ! ","md",false, false, false, false, reply_markup)
end

-- ttgwzine
if text == "تتزوجيني" and msg.reply_to_message_id ~= 0 then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")) == tonumber(msg.sender_id.user_id) or tonumber(Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")) == tonumber(Message_Reply.sender_id.user_id) then
  return send(msg_chat_id,msg_id,"⇜ هييه انتو متزوجين من قبل\n✧","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
  return send(msg_chat_id,msg_id,"⇜ هييه مايمديك تتزوج نفسك\n✧","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(TheMero) then
  return send(msg_chat_id,msg_id,"⇜ هييه مايمديك تتزوجني\n✧","md")
elseif Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:") then
local zwg_id =  Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")
local zwg_info = bot.getUser(zwg_id)
return send(msg_chat_id,msg_id,"⇜ وينك ياوحش\n["..zwg_info.first_name.."](tg://user?id="..zwg_id..")\n⇜ يبون يتزوجو زوجتك ","md")
elseif Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then
  local zwg_id =  Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
  local zwg_info = bot.getUser(zwg_id)
  return send(msg_chat_id,msg_id,"⇜ الحين اناديها انتظر\n["..zwg_info.first_name.."](tg://user?id="..zwg_id..")\n⇜ يبي يتزوج عليك هههه","md")
elseif not Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")  then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local rep_info = bot.getUser(Message_Reply.sender_id.user_id)
local rep_tag = "["..rep_info.first_name.."](tg://user?id="..Message_Reply.sender_id.user_id..")"
local user_info = bot.getUser(msg.sender_id.user_id)
local user_tag = "["..user_info.first_name.."](tg://user?id="..msg.sender_id.user_id..")"
local reply_markup = bot.replyMarkup{
  type = 'inline',
  data = {
  {
  {text = 'موافقه', data = Message_Reply.sender_id.user_id..'/yes_z/'..msg.sender_id.user_id},
  {text = 'مو موافقه', data = Message_Reply.sender_id.user_id..'/no_z/'..msg.sender_id.user_id},
  },
  }
  }
return send(msg_chat_id,msg.reply_to_message_id,"⇜ يا 「"..rep_tag.."」\n⇜「"..user_tag.."」\n⇜ طالبك للزواج شرايك فيه ؟","md",false, false, false, false, reply_markup)
end
end
if text == "زوجتي" then
  if Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then
    local zwga_id = Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
    local zwga_name = bot.getUser(zwga_id).first_name
    return send(msg_chat_id,msg_id,"⇜ وينك ياحلوة ["..zwga_name.."](tg://user?id="..zwga_id..") زوجك يبيك\n✧","md")
  elseif not Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then
    return send(msg_chat_id,msg_id,"⇜ ياحلو انت مو متزوج الله يرزقك بالزوجة الصالحة\n✧","md")
  end
end
if text == "زوجي" then
  if Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then
    local zwga_id = Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
    local zwga_name = bot.getUser(zwga_id).first_name
    return send(msg_chat_id,msg_id,"⇜ وينك ياحلو ["..zwga_name.."](tg://user?id="..zwga_id..") زوجتك تبيك\n✧","md")
  elseif not Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then
    return send(msg_chat_id,msg_id,"⇜ هييه انتي مو متزوجه\n✧","md")
  end
end
if text == "انتي طالق" and  msg.reply_to_message_id ~= 0 then 
  local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
  return send(msg_chat_id,msg_id,"⇜ هييه مايمديك تطلق نفسك\n✧","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(TheMero) then
  return send(msg_chat_id,msg_id,"⇜ هييه مايمديك تطلقني ياورع !\n✧","md")
elseif tonumber(Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")) ~= tonumber(msg.sender_id.user_id) or tonumber(Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")) ~= tonumber(Message_Reply.sender_id.user_id) then
  return send(msg_chat_id,msg_id,"⇜ هييه مايمديك تطلقها لان مو زوجتك\n✧","md")
elseif tonumber(Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")) == tonumber(msg.sender_id.user_id) or tonumber(Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")) == tonumber(Message_Reply.sender_id.user_id) then
    Redis:del(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")
    Redis:del(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
    return send(msg_chat_id,msg_id,"⇜الحمدالله تم طلاقكم فكونا من المشاكل\n✧","md")
  end
end
if text == "انت طالق" or text == "انتا طالق" and  msg.reply_to_message_id ~= 0 then 
  local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
  return send(msg_chat_id,msg_id,"⇜ هييه مايمديك تطلقي نفسك\n✧","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(TheMero) then
  return send(msg_chat_id,msg_id,"⇜ هييه مايمديك تطلقني ياورع !\n✧","md")
elseif tonumber(Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")) ~= tonumber(msg.sender_id.user_id) or tonumber(Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")) ~= tonumber(Message_Reply.sender_id.user_id) then
  return send(msg_chat_id,msg_id,"⇜ هييه هذا مو زوجك شلون تطلقها\n✧","md")
elseif tonumber(Redis:get(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")) == tonumber(msg.sender_id.user_id) or tonumber(Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")) == tonumber(Message_Reply.sender_id.user_id) then
    Redis:del(TheMero..msg_chat_id..Message_Reply.sender_id.user_id.."mtzwga:")
    Redis:del(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
    return send(msg_chat_id,msg_id,"⇜ الحمدالله تم طلاقكم فكونا من المشاكل\n✧","md")
  end
end
if text == "طلقني" or text == "طلقيني" then
  if not Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then 
  return send(msg_chat_id,msg_id,"⇜ هييه انت/ـي مو متزوج/ـه\n✧","md")
  elseif Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:") then
    local zwg_id = Redis:get(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
    local zwg_name = bot.getUser(zwg_id).first_name
    Redis:del(TheMero..msg_chat_id..msg.sender_id.user_id.."mtzwga:")
    Redis:del(TheMero..msg_chat_id..zwg_id.."mtzwga:")
    return send(msg_chat_id,msg_id,"⇜ تم طلاقك من ["..zwg_name.."](tg://user?id="..zwg_id..")\nفكونا من المشاكل","md")
  end
end
if text == "تحدي" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local Info_Members = bot.searchChatMembers(msg.chat_id, "*", 200)
local List = Info_Members.members
local Zozne = List[math.random(#List)] 
local data = bot.getUser(Zozne.member_id.user_id)
tagname = data.first_name
tagname = tagname:gsub("]","") 
tagname = tagname:gsub("[[]","") 
local Textinggt = {"تعترف له/ا بشي", "تقول له أو لها اسم امك", "تقول له او لها وين ساكن", "تقول كم عمرك", "تقول اسم ابوك", "تقول عمرك له", "تقول له كم مرا حبيت", "تقول له اسم سيارتك", "تقولين له اسم امك", "تقولين له انا احبك", "تقول له انت حيوان", "تقول اسمك الحقيقي له", "ترسله اخر صور", "تصور له وين جالس", "تعرف لها بشي", "ترسله كل فلوسك بالبوت", "تصور لها غرفتك", "تصور/ين عيونك وترسلها بالقروب", "ترسل سنابك او ترسلين سنابك", }
local Descriptioont = Textinggt[math.random(#Textinggt)]
Text = "اتحداك\n"..Descriptioont.." ↤ ["..tagname.."](tg://user?id="..Zozne.member_id.user_id..")"
send(msg.chat_id,msg.id,Text,"md",true)
end 

if text == "بوب" or text == "مشاهير" then
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ الالعاب معطلة من قبل المشرفين","md",true)
end
KlamSpeed = {"شوان","سام","ايد شيرين","جاستين","اريانا","سام سميث","ايد","جاستين","معزه","ميسي","صلاح","محمد صلاح","احمد عز","كريستيانو","كريستيانو رونالدو","رامز جلال","امير كراره","ويجز","بابلو","تامر حسني","ابيو","شيرين","نانسي عجرم","محمد رمضان","احمد حلمي","محمد هنيدي","حسن حسني","حماقي","احمد مكي"};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(TheMero.."mshaher"..msg.chat_id,name)
name = string.gsub(name,"شوان","https://t.me/HC6HH/8")
name = string.gsub(name,"سام","https://t.me/HC6HH/7")
name = string.gsub(name,"سام سميث","https://t.me/HC6HH/7")
name = string.gsub(name,"ايد شيرين","https://t.me/HC6HH/6")
name = string.gsub(name,"ايد","https://t.me/HC6HH/6")
name = string.gsub(name,"جاستين","https://t.me/HC6HH/4")
name = string.gsub(name,"جاستين بيبر","https://t.me/HC6HH/4")
name = string.gsub(name,"اريانا","https://t.me/HC6HH/5")
name = string.gsub(name,"ميسي","https://t.me/HC6HH/10")
name = string.gsub(name,"معزه","https://t.me/HC6HH/10")
name = string.gsub(name,"صلاح","https://t.me/HC6HH/9")
name = string.gsub(name,"محمد صلاح","https://t.me/HC6HH/9")
name = string.gsub(name,"احمد عز","https://t.me/HC6HH/12")
name = string.gsub(name,"كريم عبدالعزيز","https://t.me/HC6HH/11")
name = string.gsub(name,"كريستيانو رونالدو","https://t.me/HC6HH/13")
name = string.gsub(name,"كريستيانو","https://t.me/HC6HH/13")
name = string.gsub(name,"امير كراره","https://t.me/HC6HH/14")
name = string.gsub(name,"رامز جلال","https://t.me/HC6HH/15")
name = string.gsub(name,"ويجز","https://t.me/HC6HH/16")
name = string.gsub(name,"بابلو","https://t.me/HC6HH/17")
name = string.gsub(name,"ابيو","https://t.me/HC6HH/20")
name = string.gsub(name,"شيرين","https://t.me/HC6HH/21")
name = string.gsub(name,"نانسي عجرم","https://t.me/HC6HH/22")
name = string.gsub(name,"محمد رمضان","https://t.me/HC6HH/25")
name = string.gsub(name,"احمد حلمي","https://t.me/HC6HH/26")
name = string.gsub(name,"محمد هنيدي","https://t.me/HC6HH/27")
name = string.gsub(name,"حسن حسني","https://t.me/HC6HH/28")
name = string.gsub(name,"احمد مكي","https://t.me/HC6HH/29")
name = string.gsub(name,"تامر حسني","https://t.me/HC6HH/30")
name = string.gsub(name,"حماقي","https://t.me/HC6HH/31")
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&photo="..name.."&caption="..URL.escape("اسرع واحد يقول اسم هذا الفنان").."&reply_to_message_id="..(msg.id/2097152/0.5))
end
if text == "حيوان" or text == "حيوانات" then
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ الالعاب معطلة من قبل المشرفين","md",true)
end
KlamSpeedd = {"ثعلب","حمار وحشي","اسد","نمر","حصان","فرس النهر","سنجاب","كنغر","فيل","قطه","نسر","صقر","قرد","ضفدع","حرباء"};
name = KlamSpeedd[math.random(#KlamSpeedd)]
Redis:set(TheMero.."mshaherr"..msg.chat_id,name)
name = string.gsub(name,"ثعلب","https://t.me/YAFAEVI/2")
name = string.gsub(name,"حمار وحشي","https://t.me/YAFAEVI/3")
name = string.gsub(name,"اسد","https://t.me/YAFAEVI/4")
name = string.gsub(name,"نمر","https://t.me/YAFAEVI/5")
name = string.gsub(name,"حصان","https://t.me/YAFAEVI/6")
name = string.gsub(name,"فرس النهر","https://t.me/YAFAEVI/7")
name = string.gsub(name,"سنجاب","https://t.me/YAFAEVI/8")
name = string.gsub(name,"كنغر","https://t.me/YAFAEVI/9")
name = string.gsub(name,"فيل","https://t.me/YAFAEVI/10")
name = string.gsub(name,"صقر","https://t.me/YAFAEVI/11")
name = string.gsub(name,"نسر","https://t.me/YAFAEVI/12")
name = string.gsub(name,"قطه","https://t.me/YAFAEVI/13")
name = string.gsub(name,"قرد","https://t.me/YAFAEVI/14")
name = string.gsub(name,"ضفدع","https://t.me/YAFAEVI/15")
name = string.gsub(name,"حرباء","https://t.me/YAFAEVI/16")
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&photo="..name.."&caption="..URL.escape("اسرع واحد يقول اسم هذا الحيوان").."&reply_to_message_id="..(msg.id/2097152/0.5))
end
if text == "زووم" or text == "زوم" then
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ الالعاب معطلة من قبل المشرفين","md",true)
end
KlamSpeeddd = {"فراوله","غيوم","قط","عشب","بطه","الماس","شمس","حاسبه","فطر","موقد","ساعه","حذاء","مفتاح","كرز","جبن","سلحفاه","شعر","نظاره","حمار وحشي","سلطه","بطيخ","كتاب","طماطم","ديك","كرسي","حجاب","بوصله"};
name = KlamSpeeddd[math.random(#KlamSpeeddd)]
Redis:set(TheMero.."mshaherrr"..msg.chat_id,name)
name = string.gsub(name,"فراوله","https://t.me/zzommm/2")
name = string.gsub(name,"غيوم","https://t.me/zzommm/3")
name = string.gsub(name,"قط","https://t.me/zzommm/4")
name = string.gsub(name,"عشب","https://t.me/zzommm/5")
name = string.gsub(name,"بطه","https://t.me/zzommm/6")
name = string.gsub(name,"الماس","https://t.me/zzommm/7")
name = string.gsub(name,"شمس","https://t.me/zzommm/8")
name = string.gsub(name,"حاسبه","https://t.me/zzommm/9")
name = string.gsub(name,"فطر","https://t.me/zzommm/10")
name = string.gsub(name,"موقد","https://t.me/zzommm/11")
name = string.gsub(name,"ساعه","https://t.me/zzommm/12")
name = string.gsub(name,"حذاء","https://t.me/zzommm/13")
name = string.gsub(name,"مفتاح","https://t.me/zzommm/14")
name = string.gsub(name,"كرز","https://t.me/zzommm/15")
name = string.gsub(name,"جبن","https://t.me/zzommm/16")
name = string.gsub(name,"سلحفاه","https://t.me/zzommm/17")
name = string.gsub(name,"شعر","https://t.me/zzommm/18")
name = string.gsub(name,"نظاره","https://t.me/zzommm/19")
name = string.gsub(name,"حمار وحشي","https://t.me/zzommm/20")
name = string.gsub(name,"سلطه","https://t.me/zzommm/21")
name = string.gsub(name,"بطيخ","https://t.me/zzommm/22")
name = string.gsub(name,"كتاب","https://t.me/zzommm/23")
name = string.gsub(name,"طماطم","https://t.me/zzommm/24")
name = string.gsub(name,"ديك","https://t.me/zzommm/25")
name = string.gsub(name,"كرسي","https://t.me/zzommm/26")
name = string.gsub(name,"حجاب","https://t.me/zzommm/27")
name = string.gsub(name,"بوصله","https://t.me/zzommm/28")
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&photo="..name.."&caption="..URL.escape("اسرع واحد يعرف الصوره").."&reply_to_message_id="..(msg.id/2097152/0.5))
end
if text == 'الالعاب الاحترافيه' or text == 'الالعاب المتطوره' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text="♟ Chess Game ♟",url='https://t.me/T4TTTTBOT?game=chess'}},
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
{{text = 'Louis',url="t.me/Y88F8"}},
}
}
send(msg.chat_id,msg.id,'⇜ قائمة الالعاب المتطورة ',"md", true, false, false, false, reply_markup)
end

if text == "صور" then
if not Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ الالعاب معطلة من قبل المشرفين","md",true)
end
KlamSpeeddd = {"ديل","زيتون","بن تن","ون بيس","نمله","توت","دكتور","باونتي","عسل","سابق ولاحق","دماغ","خروف","ميكي ماوس","كرسي","كيا","عين","بي ام دبليو","بشت","لاما","ببجي","سيمبا","سبونج بوب","شاي","طبله","كابتن ماجد","اليابان","بزر","ديك رومي","لاكوست","نوكيا","بطه","غوريلا","باب","كراش","لوتس","فرشه","اسعاف","تركيا","تشيلسي","طرزان","ال جي","نوتيلا","طفايه","عدنان ولينا","فتيات القوه","دمعه","قراند","قطط","سله","فلاش","يد","كبد","الصين","مكسرات","فيمتو","باباي","كالويس","مسجد","برايه","بطوط","باندا","كيندر","طياره","سنافر","الصين","سالي","بطريق","قرد","شاورما","ثريه","ميداليه","ماعز","سرير","هدى","بطاريه","احلام","نيسان","لابتوب","نسر","مسدس","مسواك","بير","قوقل","ملعب","دبابه","مغسله","سلم","دبور","كودو","بيانو","كهف","مشط","نقار الخشب","تفاح","طاوله","عنكبوت"};
name = KlamSpeeddd[math.random(#KlamSpeeddd)]
Redis:set(TheMero.."photohzr"..msg.chat_id,name)
name = string.gsub(name,"ديل","https://t.me/hsjwjwhs82819/2")
name = string.gsub(name,"زيتون","https://t.me/hsjwjwhs82819/3")
name = string.gsub(name,"بن تن","https://t.me/hsjwjwhs82819/4")
name = string.gsub(name,"ون بيس","https://t.me/hsjwjwhs82819/5")
name = string.gsub(name,"نمله","https://t.me/hsjwjwhs82819/6")
name = string.gsub(name,"توت","https://t.me/hsjwjwhs82819/7")
name = string.gsub(name,"دكتور","https://t.me/hsjwjwhs82819/8")
name = string.gsub(name,"باونتي","https://t.me/hsjwjwhs82819/9")
name = string.gsub(name,"عسل","https://t.me/hsjwjwhs82819/10")
name = string.gsub(name,"سابق ولاحق","https://t.me/hsjwjwhs82819/11")
name = string.gsub(name,"دماغ","https://t.me/hsjwjwhs82819/12")
name = string.gsub(name,"خروف","https://t.me/hsjwjwhs82819/13")
name = string.gsub(name,"ميكي ماوس","https://t.me/hsjwjwhs82819/14")
name = string.gsub(name,"كرسي","https://t.me/hsjwjwhs82819/15")
name = string.gsub(name,"كيا","https://t.me/hsjwjwhs82819/16")
name = string.gsub(name,"عين","https://t.me/hsjwjwhs82819/17")
name = string.gsub(name,"بي ام دبليو","https://t.me/hsjwjwhs82819/18")
name = string.gsub(name,"بشت","https://t.me/hsjwjwhs82819/19")
name = string.gsub(name,"لاما","https://t.me/hsjwjwhs82819/20")
name = string.gsub(name,"ببجي","https://t.me/hsjwjwhs82819/21")
name = string.gsub(name,"سيمبا","https://t.me/hsjwjwhs82819/22")
name = string.gsub(name,"سبونج بوب","https://t.me/hsjwjwhs82819/23")
name = string.gsub(name,"شاي","https://t.me/hsjwjwhs82819/24")
name = string.gsub(name,"طبله","https://t.me/hsjwjwhs82819/25")
name = string.gsub(name,"كابتن ماجد","https://t.me/hsjwjwhs82819/26")
name = string.gsub(name,"اليابان","https://t.me/hsjwjwhs82819/27")
name = string.gsub(name,"بزر","https://t.me/hsjwjwhs82819/28")
name = string.gsub(name,"ديك رومي","https://t.me/hsjwjwhs82819/29")
name = string.gsub(name,"لاكوست","https://t.me/hsjwjwhs82819/30")
name = string.gsub(name,"نوكيا","https://t.me/hsjwjwhs82819/31")
name = string.gsub(name,"بطه","https://t.me/hsjwjwhs82819/32")
name = string.gsub(name,"غوريلا","https://t.me/hsjwjwhs82819/33")
name = string.gsub(name,"باب","https://t.me/hsjwjwhs82819/34")
name = string.gsub(name,"كراش","https://t.me/hsjwjwhs82819/35")
name = string.gsub(name,"لوتس","https://t.me/hsjwjwhs82819/36")
name = string.gsub(name,"فرشه","https://t.me/hsjwjwhs82819/37")
name = string.gsub(name,"اسعاف","https://t.me/hsjwjwhs82819/38")
name = string.gsub(name,"تركيا","https://t.me/hsjwjwhs82819/39")
name = string.gsub(name,"تشيلسي","https://t.me/hsjwjwhs82819/40")
name = string.gsub(name,"طرزان","https://t.me/hsjwjwhs82819/41")
name = string.gsub(name,"ال جي","https://t.me/hsjwjwhs82819/42")
name = string.gsub(name,"نوتيلا","https://t.me/hsjwjwhs82819/43")
name = string.gsub(name,"طفايه","https://t.me/hsjwjwhs82819/44")
name = string.gsub(name,"عدنان ولينا","https://t.me/hsjwjwhs82819/45")
name = string.gsub(name,"فتيات القوه","https://t.me/hsjwjwhs82819/46")
name = string.gsub(name,"دمعه","https://t.me/hsjwjwhs82819/47")
name = string.gsub(name,"قراند","https://t.me/hsjwjwhs82819/48")
name = string.gsub(name,"قطط","https://t.me/hsjwjwhs82819/49")
name = string.gsub(name,"سله","https://t.me/hsjwjwhs82819/50")
name = string.gsub(name,"فلاش","https://t.me/hsjwjwhs82819/51")
name = string.gsub(name,"يد","https://t.me/hsjwjwhs82819/52")
name = string.gsub(name,"كبد","https://t.me/hsjwjwhs82819/53")
name = string.gsub(name,"الصين","https://t.me/hsjwjwhs82819/54")
name = string.gsub(name,"مكسرات","https://t.me/hsjwjwhs82819/55")
name = string.gsub(name,"فيمتو","https://t.me/hsjwjwhs82819/56")
name = string.gsub(name,"باباي","https://t.me/hsjwjwhs82819/57")
name = string.gsub(name,"كالميرا","https://t.me/hsjwjwhs82819/58")
name = string.gsub(name,"مسجد","https://t.me/hsjwjwhs82819/59")
name = string.gsub(name,"برايه","https://t.me/hsjwjwhs82819/60")
name = string.gsub(name,"بطوط","https://t.me/hsjwjwhs82819/61")
name = string.gsub(name,"باندا","https://t.me/hsjwjwhs82819/62")
name = string.gsub(name,"كيندر","https://t.me/hsjwjwhs82819/63")
name = string.gsub(name,"طياره","https://t.me/hsjwjwhs82819/64")
name = string.gsub(name,"سنافر","https://t.me/hsjwjwhs82819/65")
name = string.gsub(name,"الصين","https://t.me/hsjwjwhs82819/66")
name = string.gsub(name,"سالي","https://t.me/hsjwjwhs82819/67")
name = string.gsub(name,"بطريق","https://t.me/hsjwjwhs82819/68")
name = string.gsub(name,"قرد","https://t.me/hsjwjwhs82819/69")
name = string.gsub(name,"شاورما","https://t.me/hsjwjwhs82819/70")
name = string.gsub(name,"ثريه","https://t.me/hsjwjwhs82819/71")
name = string.gsub(name,"ميداليه","https://t.me/hsjwjwhs82819/72")
name = string.gsub(name,"ماعز","https://t.me/hsjwjwhs82819/73")
name = string.gsub(name,"سرير","https://t.me/hsjwjwhs82819/74")
name = string.gsub(name,"هدى","https://t.me/hsjwjwhs82819/75")
name = string.gsub(name,"بطاريه","https://t.me/hsjwjwhs82819/76")
name = string.gsub(name,"احلام","https://t.me/hsjwjwhs82819/77")
name = string.gsub(name,"نيسان","https://t.me/hsjwjwhs82819/78")
name = string.gsub(name,"لابتوب","https://t.me/hsjwjwhs82819/79")
name = string.gsub(name,"نسر","https://t.me/hsjwjwhs82819/80")
name = string.gsub(name,"مسدس","https://t.me/hsjwjwhs82819/81")
name = string.gsub(name,"مسواك","https://t.me/hsjwjwhs82819/82")
name = string.gsub(name,"بير","https://t.me/hsjwjwhs82819/83")
name = string.gsub(name,"قوقل","https://t.me/hsjwjwhs82819/84")
name = string.gsub(name,"ملعب","https://t.me/hsjwjwhs82819/85")
name = string.gsub(name,"دبابه","https://t.me/hsjwjwhs82819/86")
name = string.gsub(name,"مغسله","https://t.me/hsjwjwhs82819/87")
name = string.gsub(name,"سلم","https://t.me/hsjwjwhs82819/88")
name = string.gsub(name,"دبور","https://t.me/hsjwjwhs82819/89")
name = string.gsub(name,"كودو","https://t.me/hsjwjwhs82819/90")
name = string.gsub(name,"بيانو","https://t.me/hsjwjwhs82819/91")
name = string.gsub(name,"كهف","https://t.me/hsjwjwhs82819/92")
name = string.gsub(name,"مشط","https://t.me/hsjwjwhs82819/93")
name = string.gsub(name,"نقار الخشب","https://t.me/hsjwjwhs82819/94")
name = string.gsub(name,"تفاح","https://t.me/hsjwjwhs82819/95")
name = string.gsub(name,"طاوله","https://t.me/hsjwjwhs82819/96")
name = string.gsub(name,"عنكبوت","https://t.me/hsjwjwhs82819/97")
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&photo="..name.."&caption="..URL.escape("اسرع واحد يعرف الصورة").."&reply_to_message_id="..(msg.id/2097152/0.5))
end


if text == 'وضع الاقتباسات' or text == 'ضع اقتباسات' or text == 'تغير الاقتباس' or text == 'تغيير اقتباسات' or text == 'وضع اقتباس' or text == 'تغيير الاقتباس' or text == 'وضع الاقتباس' or text == 'تعيين الاقتباس' then
if not msg.Addictive then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(7)..' ) ',"md",true)  
end
Redis:setex(TheMero.."Status:aktbassend"..msg.chat_id,120,true) 
return send(msg_chat_id,msg_id,'\n⇜ ارسل لي الاقتباس\n- يسمح لك :\n( ملصق + صورة + نص + فيديو + صوت )',"md",true)  
end
if Redis:get(TheMero..'Status:aktbassend'..msg.chat_id) then
Redis:del(TheMero..'Status:aktbassend'..msg.chat_id)
Redis:del(TheMero..'Status:aktbasrdstic'..msg.chat_id)
Redis:del(TheMero..'Status:aktbasrdtext'..msg.chat_id)
Redis:del(TheMero..'Status:aktbasrdaudio'..msg.chat_id)
Redis:del(TheMero..'Status:aktbasrdanim'..msg.chat_id)
Redis:del(TheMero..'Status:aktbasrdvid'..msg.chat_id)
Redis:del(TheMero..'Status:aktbasrdphoto'..msg.chat_id)
if msg.content.sticker then   
Redis:set(TheMero.."Status:aktbasrdstic"..msg_chat_id, msg.content.sticker.sticker.remote.id)  
end   
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
Redis:set(TheMero.."Status:aktbasrdtext"..msg_chat_id, text)  
end  
if msg.content.audio then
Redis:set(TheMero.."Status:aktbasrdaudio"..msg_chat_id, msg.content.audio.audio.remote.id)  
end
if msg.content.animation then
Redis:set(TheMero.."Status:aktbasrdanim"..msg_chat_id, msg.content.animation.animation.remote.id)  
end
if msg.content.video then
Redis:set(TheMero.."Status:aktbasrdvid"..msg_chat_id, msg.content.video.video.remote.id)  
end
if msg.content.photo then
if msg.content.photo.sizes[1].photo.remote.id then
idPhoto = msg.content.photo.sizes[1].photo.remote.id
elseif msg.content.photo.sizes[2].photo.remote.id then
idPhoto = msg.content.photo.sizes[2].photo.remote.id
elseif msg.content.photo.sizes[3].photo.remote.id then
idPhoto = msg.content.photo.sizes[3].photo.remote.id
end
Redis:set(TheMero.."Status:aktbasrdphoto"..msg_chat_id, idPhoto)  
end
return send(msg_chat_id,msg_id,'\n⇜ تم تغيير الاقتباس ',"md",true)  
end
if text == 'تفعيل الاقتباسات' or text == 'تفعيل اقتباسات' or text == 'تفعيل وضع الاقتباسات' or text == 'تفعيل وضع اقتباسات' or text == 'تفعيل الاقتباس' then
if not msg.Addictive then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(7)..' ) ',"md",true)  
end
Redis:del(TheMero..'Status:Reply'..msg.chat_id)
Redis:set(TheMero.."Status:aktbas"..msg.chat_id,true) 
send(msg.chat_id,msg.id,"⇜ ابشر فعلت الاقتباسات ","md",true)
end
if text == 'تعطيل الاقتباسات' or text == 'تعطيل اقتباسات' or text == 'تعطيل وضع الاقتباسات' or text == 'تعطيل وضع اقتباسات' or text == 'تعطيل الاقتباس' then
if not msg.Addictive then
return send(msg_chat_id,msg_id,'\n⇜ هذا الامر يخص ( '..Controller_Num(7)..' ) ',"md",true)  
end
Redis:set(TheMero..'Status:Reply'..msg.chat_id,true)
Redis:del(TheMero.."Status:aktbas"..msg.chat_id) 
send(msg.chat_id,msg.id,"⇜ ابشر عطلت الاقتباسات ","md",true)
end

if Redis:get(TheMero..'Status:aktbas'..msg.chat_id) == 'true' then
if msg.forward_info or text or msg.content.video_note or msg.content.document or msg.content.audio or msg.content.video or msg.content.voice_note or msg.content.sticker or msg.content.animation or msg.content.photo then
if Redis:get(TheMero..'Status:aktbasrdstic'..msg.chat_id) then
return bot.sendSticker(msg.chat_id, 0, Redis:get(TheMero..'Status:aktbasrdstic'..msg.chat_id))
elseif Redis:get(TheMero..'Status:aktbasrdtext'..msg.chat_id) then
return send(msg.chat_id,0,Redis:get(TheMero..'Status:aktbasrdtext'..msg.chat_id),"md",true)
elseif Redis:get(TheMero..'Status:aktbasrdaudio'..msg.chat_id) then
return bot.sendAudio(msg.chat_id, 0, Redis:get(TheMero..'Status:aktbasrdaudio'..msg.chat_id), '', "md") 
elseif Redis:get(TheMero..'Status:aktbasrdanim'..msg.chat_id) then
return bot.sendAnimation(msg.chat_id,0, Redis:get(TheMero..'Status:aktbasrdanim'..msg.chat_id), '', 'md')
elseif Redis:get(TheMero..'Status:aktbasrdphoto'..msg.chat_id) then
return bot.sendPhoto(msg.chat_id, 0, Redis:get(TheMero..'Status:aktbasrdphoto'..msg.chat_id),'')
elseif Redis:get(TheMero..'Status:aktbasrdvid'..msg.chat_id) then
return bot.sendVideo(msg.chat_id, 0, Redis:get(TheMero..'Status:aktbasrdvid'..msg.chat_id), '', "md")
else
return send(msg.chat_id,0,"-","md",true)
end
end
end
if text == "شبيهي" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
Abs = math.random(2,140); 
local Text ='الصراحه اتفق هذا شبيهك'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Louis', url = "https://t.me/Y88F8"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/VVVVBV1V/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "شبيهتي" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
Abs = math.random(2,140); 
local Text ='الصراحه اتفق هذي شبيهتك '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Louis', url = "https://t.me/Y88F8"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/VVVYVV4/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
------------------------------------------------------------------
if text == 'شخصيتي' or text == 'نوع شخصيتي' then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local nspp = {"شكاك","متعاونة","رومنسية","اجتماعية","كلاسيكية","متردده","ايجابية","نرجسية","قيادية","محفزة","مسالمة","قويه","ضعيفة","غامضة","اجتماعية","رومنسية","قويه","كلاسيكية","ما عندك شخصيه","","عصبي","ما عندك شخصيه","مسالمة","مسالمة",}
nsppp = nspp[math.random(#nspp)]
send(msg_chat_id,msg_id,'\nشخصيتك ↢ '..nsppp..' ',"md",true)  
end
------------------------------------------------------------------
if text == "اغاني" or text == "اطربني" or text == "غنيلي" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
Abs = math.random(2,140);
local Text ='🎙'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
keyboard = {}
keyboard.inline_keyboard = {{{text = '• اغنية اخرى •', callback_data = msg.sender_id.user_id..'/kanele'}}}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/fkfnfnfn/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "مسلسل" or text == "مسلسلات" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
Abs = math.random(2,54); 
local Text =''
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/SeriesWaTaN/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown") 
end
if text == "قيفات بنات" or text == "قيف بنات" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا القيف"
Rrr = math.random(4,50)
local m = "https://t.me/lflflrofo/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendanimation?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&animation="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "قيفات عيال" or text == "قيف عيال" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا القيف"
Rrr = math.random(4,50)
local m = "https://t.me/dldldldlgt/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendanimation?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&animation="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "قيفات قطط" or text == "قيف قطط" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا القيف"
Rrr = math.random(4,50)
local m = "https://t.me/gsgjituops/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendanimation?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&animation="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "قيفات اطفال" or text == "قيف اطفال" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا القيف"
Rrr = math.random(4,50)
local m = "https://t.me/fmgngoclr/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendanimation?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&animation="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "قيفات رومانسيه" or text == "قيفات رومانسية" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا القيف"
Rrr = math.random(4,50)
local m = "https://t.me/romansiaaa/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendanimation?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&animation="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "قيفات كيبوب" or text == "قيف كيبوب" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا القيف"
Rrr = math.random(4,50)
local m = "https://t.me/kibobg/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendanimation?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&animation="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "قصائد" or text == "شعرر" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا "
Rrr = math.random(4,50)
local m = "https://t.me/jahske/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendvoice?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&voice="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "قرآن" or text == "قران" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "اللهُم الجَنة وسّلام على الدُنيا و مَا فيها ."
Rrr = math.random(4,50)
local m = "https://t.me/jahske/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendvoice?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&voice="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "كوكسال" or text == "قيفات كوكسال" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا القيف"
Rrr = math.random(4,50)
local m = "https://t.me/koksalt/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendanimation?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&animation="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "شعر" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الشعر"
Rrr = math.random(4,50)
local m = "https://t.me/lflfltnt/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendvoice?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&voice="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "فصحى" or text == "الفصحى" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الفصحى"
Rrr = math.random(4,50)
local m = "https://t.me/Shshshsc/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendvoice?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&voice="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "ايدت" or text == "ايدتات" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الايدت"
Rrr = math.random(4,50)
local m = "https://t.me/editedl/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendvideo?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&video="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افلام" or text == "فلم" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الفلم"
Rrr = math.random(4,50)
local m = "https://t.me/Ntsjcdz/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendvideo?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&video="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "ايدت انمي" or text == "ايدتات انمي" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الايدت"
Rrr = math.random(4,50)
local m = "https://t.me/javsushs/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendvideo?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&video="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات سنمائيه" or text == "افتار سنمائي" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/IIYIZ/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات فنانين" or text == "افتارات مشاهير" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/FPPPH/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات بنات" or text == "افتار بنات" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/javanev/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "لوكيت" or text == "افتار لوكيت" or text == "افتارات لوكيت" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا اللوكيت"
Rrr = math.random(4,50)
local m = "https://t.me/kabsjjwbs/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات عيال" or text == "افتار عيال" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/hcjcrnm/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات لاعبين" or text == "افتار لاعبين" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/IIYIH/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات رسم" or text == "افتار رسم" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/Lorebots5/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات فكتوري" or text == "افتار فكتوري" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/Lorebots6/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات انمي" or text == "افتار انمي" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/havsjshd/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات كيبوب" or text == "افتار كيبوب" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/xcososss/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "افتارات تطقيم" or text == "افتار تطقيم" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الافتار"
Rrr = math.random(4,50)
local m = "https://t.me/zzuauwwuaisz/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "عباره" or text == "عبارات" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا العبارة"
Rrr = math.random(4,50)
local m = "https://t.me/Lorebots8/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "اقتباسات" or text == "اقتباسات" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الاقتباس"
Rrr = math.random(4,50)
local m = "https://t.me/Lorebots9/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "اقتباس" or text == "اقتباس" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الاقتباس"
Rrr = math.random(4,50)
local m = "https://t.me/fnfnffkfi/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "جداريات" or text == "جدار" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الجدار"
Rrr = math.random(4,50)
local m = "https://t.me/flflflgktl/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "هيدرات" or text == "هيد" then
if Redis:get(TheMero.."trfeh"..msg.chat_id) then
return send(msg.chat_id,msg.id,"⇜ التسلية معطلة من قبل المشرفين","md",true)
end
local t = "⇜ اخترت لك هذا الهيدرات"
Rrr = math.random(4,50)
local m = "https://t.me/Lorebots10/"..Rrr..""
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&photo="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "سمايلات" or text == "سمايل" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
Random = {"??","🍎","🍐","??","🍋","🍉","??","🍓","🍈","🍒","🍑","🍍","🥥","??","🍅","🍆","🥑","🥦","🥒","🌶","🌽","🥕","🥔","🥖","🥐","🍞","🥨","🍟","??","🥚","🍳","??","🥩","🍗","🍖","🌭","🍔","🍠","🍕","🥪","🥙","☕️","🥤","🍶","🍺","??","🏀","⚽️","🏈","⚾️","🎾","🏐","🏉","🎱","🏓","🏸","🥅","🎰","🎮","🎳","🎯","🎲","🎻","🎸","🎺","🥁","🎹","🎼","🎧","🎤","🎬","🎨","🎭","🎪","🎟","🎫","🎗","🏵","🎖","🏆","🥌","🛷","🚗","🚌","🏎","🚓","🚑","🚚","🚛","🚜","⚔","🛡","🔮","🌡","💣","⌔","📍","📓","📗","📂","📅","📪","??","⌔","📭","⏰","??","🎚","☎️","📡"}
SM = Random[math.random(#Random)]
Redis:set(TheMero.."Mero:Game:Smile"..msg.chat_id,SM)
return send(msg_chat_id,msg_id,"⇜ اسرع واحد يرسل السمايل ( "..SM.." )","md",true)  
end
end
if text == "الاسرع" or text == "ترتيب" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(TheMero.."Mero:Game:Monotonous"..msg.chat_id,name)
name = string.gsub(name,"سحور","س ر و ح")
name = string.gsub(name,"سياره","ه ر س ي ا")
name = string.gsub(name,"استقبال","ل ب ا ت ق س ا")
name = string.gsub(name,"قنفه","ه ق ن ف")
name = string.gsub(name,"ايفون","و ن ف ا")
name = string.gsub(name,"بزونه","ز و ه ن")
name = string.gsub(name,"مطبخ","خ ب ط م")
name = string.gsub(name,"كرستيانو","س ت ا ن و ك ر ي")
name = string.gsub(name,"دجاجه","ج ج ا د ه")
name = string.gsub(name,"مدرسه","ه م د ر س")
name = string.gsub(name,"الوان","ن ا و ا ل")
name = string.gsub(name,"غرفه","غ ه ر ف")
name = string.gsub(name,"ثلاجه","ج ه ت ل ا")
name = string.gsub(name,"كهوه","ه ك ه و")
name = string.gsub(name,"سفينه","ه ن ف ي س")
name = string.gsub(name,"العراق","ق ع ا ل ر ا")
name = string.gsub(name,"محطه","ه ط م ح")
name = string.gsub(name,"طياره","ر ا ط ي ه")
name = string.gsub(name,"رادار","ر ا ر ا د")
name = string.gsub(name,"منزل","ن ز م ل")
name = string.gsub(name,"مستشفى","ى ش س ف ت م")
name = string.gsub(name,"كهرباء","ر ب ك ه ا ء")
name = string.gsub(name,"تفاحه","ح ه ا ت ف")
name = string.gsub(name,"اخطبوط","ط ب و ا خ ط")
name = string.gsub(name,"سلمون","ن م و ل س")
name = string.gsub(name,"فرنسا","ن ف ر س ا")
name = string.gsub(name,"برتقاله","ر ت ق ب ا ه ل")
name = string.gsub(name,"تفاح","ح ف ا ت")
name = string.gsub(name,"مطرقه","ه ط م ر ق")
name = string.gsub(name,"بتيته","ب ت ت ي ه")
name = string.gsub(name,"لهانه","ه ن ل ه ل")
name = string.gsub(name,"شباك","ب ش ا ك")
name = string.gsub(name,"باص","ص ا ب")
name = string.gsub(name,"سمكه","ك س م ه")
name = string.gsub(name,"ذباب","ب ا ب ذ")
name = string.gsub(name,"تلفاز","ت ف ل ز ا")
name = string.gsub(name,"حاسوب","س ا ح و ب")
name = string.gsub(name,"انترنيت","ا ت ن ر ن ي ت")
name = string.gsub(name,"ساحه","ح ا ه س")
name = string.gsub(name,"جسر","ر ج س")
return send(msg_chat_id,msg_id,"⇜ اسرع واحد يرتبها ~ ( "..name.." )","md",true)  
end
end
if text == "حزوره" or text == "حزورة" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
Hzora = {"الجرس","عقرب الساعه","السمك","المطر","5","الكتاب","البسمار","7","الكعبه","بيت الشعر","لهانه","انا","امي","الابره","الساعه","22","غلط","كم الساعه","البيتنجان","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت","بلم"};
name = Hzora[math.random(#Hzora)]
Redis:set(TheMero.."Mero:Game:Riddles"..msg.chat_id,name)
name = string.gsub(name,"الجرس","شيئ اذا لمسته صرخ ما هوه ؟")
name = string.gsub(name,"عقرب الساعه","اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟")
name = string.gsub(name,"السمك","ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟")
name = string.gsub(name,"المطر","شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟")
name = string.gsub(name,"5","ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ")
name = string.gsub(name,"الكتاب","ما الشيئ الذي له اوراق وليس له جذور ؟")
name = string.gsub(name,"البسمار","ما هو الشيئ الذي لا يمشي الا بالضرب ؟")
name = string.gsub(name,"7","عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ")
name = string.gsub(name,"الكعبه","ما هو الشيئ الموجود وسط مكة ؟")
name = string.gsub(name,"بيت الشعر","ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ")
name = string.gsub(name,"لهانه","وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ")
name = string.gsub(name,"انا","ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟")
name = string.gsub(name,"امي","اخت خالك وليست خالتك من تكون ؟ ")
name = string.gsub(name,"الابره","ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ")
name = string.gsub(name,"الساعه","ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟")
name = string.gsub(name,"22","كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ")
name = string.gsub(name,"غلط","ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ")
name = string.gsub(name,"كم الساعه","ما هو السؤال الذي تختلف اجابته دائما ؟")
name = string.gsub(name,"البيتنجان","جسم اسود وقلب ابيض وراس اخظر فما هو ؟")
name = string.gsub(name,"البيض","ماهو الشيئ الذي اسمه على لونه ؟")
name = string.gsub(name,"المرايه","ارى كل شيئ من دون عيون من اكون ؟ ")
name = string.gsub(name,"الضوء","ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟")
name = string.gsub(name,"الهواء","ما هو الشيئ الذي يسير امامك ولا تراه ؟")
name = string.gsub(name,"الضل","ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ")
name = string.gsub(name,"العمر","ما هو الشيء الذي كلما طال قصر ؟ ")
name = string.gsub(name,"القلم","ما هو الشيئ الذي يكتب ولا يقرأ ؟")
name = string.gsub(name,"المشط","له أسنان ولا يعض ما هو ؟ ")
name = string.gsub(name,"الحفره","ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟")
name = string.gsub(name,"البحر","ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟")
name = string.gsub(name,"الثلج","انا ابن الماء فان تركوني في الماء مت فمن انا ؟")
name = string.gsub(name,"الاسفنج","كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟")
name = string.gsub(name,"الصوت","اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟")
name = string.gsub(name,"بلم","حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ")
return send(msg_chat_id,msg_id,"⇜ اسرع واحد يحل ↓\n ( "..name.." )","md",true)  
end
end
if text == "معاني" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
Redis:del(TheMero.."Mero:Set:Maany"..msg.chat_id)
Maany_Rand = {"قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فأر","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان"}
name = Maany_Rand[math.random(#Maany_Rand)]
Redis:set(TheMero.."Mero:Game:Meaningof"..msg.chat_id,name)
name = string.gsub(name,"قرد","🐒")
name = string.gsub(name,"دجاجه","🐔")
name = string.gsub(name,"بطريق","🐧")
name = string.gsub(name,"ضفدع","🐸")
name = string.gsub(name,"بومه","🦉")
name = string.gsub(name,"نحله","🐝")
name = string.gsub(name,"ديك","🐓")
name = string.gsub(name,"جمل","🐫")
name = string.gsub(name,"بقره","🐄")
name = string.gsub(name,"دولفين","🐬")
name = string.gsub(name,"تمساح","🐊")
name = string.gsub(name,"قرش","🦈")
name = string.gsub(name,"نمر","🐅")
name = string.gsub(name,"اخطبوط","🐙")
name = string.gsub(name,"سمكه","🐟")
name = string.gsub(name,"خفاش","🦇")
name = string.gsub(name,"اسد","🦁")
name = string.gsub(name,"فأر","🐭")
name = string.gsub(name,"ذئب","🐺")
name = string.gsub(name,"فراشه","🦋")
name = string.gsub(name,"عقرب","🦂")
name = string.gsub(name,"زرافه","🦒")
name = string.gsub(name,"قنفذ","🦔")
name = string.gsub(name,"تفاحه","🍎")
name = string.gsub(name,"باذنجان","🍆")
return send(msg_chat_id,msg_id,"⇜ اسرع واحد يرسل معنى السمايل ( "..name.." )","md",true)  
end
end
if text == "العكس" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
Redis:del(TheMero.."Mero:Set:Aks"..msg.chat_id)
katu = {"باي","فهمت","موزين","اسمعك","احبك","موحلو","نضيف","حاره","ناصي","جوه","سريع","ونسه","طويل","سمين","ضعيف","قصير","شجاع","رحت","عدل","نشيط","شبعان","موعطشان","خوش ولد","اني","هادئ"}
name = katu[math.random(#katu)]
Redis:set(TheMero.."Mero:Game:Reflection"..msg.chat_id,name)
name = string.gsub(name,"باي","هلو")
name = string.gsub(name,"فهمت","مافهمت")
name = string.gsub(name,"موزين","زين")
name = string.gsub(name,"اسمعك","ماسمعك")
name = string.gsub(name,"احبك","ماحبك")
name = string.gsub(name,"موحلو","حلو")
name = string.gsub(name,"نضيف","وصخ")
name = string.gsub(name,"حاره","بارده")
name = string.gsub(name,"ناصي","عالي")
name = string.gsub(name,"جوه","فوك")
name = string.gsub(name,"سريع","بطيء")
name = string.gsub(name,"ونسه","ضوجه")
name = string.gsub(name,"طويل","قزم")
name = string.gsub(name,"سمين","ضعيف")
name = string.gsub(name,"ضعيف","قوي")
name = string.gsub(name,"قصير","طويل")
name = string.gsub(name,"شجاع","جبان")
name = string.gsub(name,"رحت","اجيت")
name = string.gsub(name,"عدل","ميت")
name = string.gsub(name,"نشيط","كسول")
name = string.gsub(name,"شبعان","جوعان")
name = string.gsub(name,"موعطشان","عطشان")
name = string.gsub(name,"خوش ولد","موخوش ولد")
name = string.gsub(name,"اني","مطي")
name = string.gsub(name,"هادئ","عصبي")
return send(msg_chat_id,msg_id,"⇜ اسرع واحد يرسل العكس ( "..name.." )","md",true)  
end
end
if text == "بات" or text == "محيبس" then   
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '𝟭 ← ( 👊 )', data = '/Mahibes1'}, {text = '𝟮 ← ( 👊 )', data = '/Mahibes2'}, 
},
{
{text = '𝟯 ← ( 👊 )', data = '/Mahibes3'}, {text = '𝟰 ← ( ?? )', data = '/Mahibes4'}, 
},
{
{text = '𝟱 ← ( 👊 )', data = '/Mahibes5'}, {text = '𝟲 ← ( 👊 )', data = '/Mahibes6'}, 
},
}
}
return send(msg_chat_id,msg_id, [[
⇜ لعبة المحيبس هي لعبة الحظ 
⇜ جرب حظك واستمتع
⇜ كل ما عليك هو الضغط على اليد
]],"md",false, false, false, false, reply_markup)
end
end
if text == "خمن" or text == "تخمين" then   
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
Num = math.random(1,20)
Redis:set(TheMero.."Mero:Game:Estimate"..msg.chat_id..msg.sender_id.user_id,Num)  
return send(msg_chat_id,msg_id,"\n⇜ اهلا بك في لعبة التخمين :\nٴ━━━━━━━━━━\n".."⇜ لديك ( 3 ) محاولات فقط فكر قبل ترسل تخمينك \n\n".."⇜ سيتم تخمين عدد ما بين ( 1 - 20 ) اذا تعتقد انك تستطيع الفوز جرب والعب الان ؟ ","md",true)  
end
end
if text == 'اسئله' or text == "اسئلة" then   
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
t1 = [[
ماهو اطول نهر في العالم 
1- النيل  
2- الفرات 
3- نهر الكونغو

⇜ ارسل الجواب الصحيح
]]
t2 = [[
ماعدد عظام الوجه؟
1- 15
2- 13
3- 14 

⇜ ارسل الجواب الصحيح
]]
t3 =[[
كراسي بيضاء وجدران ورديه اذا اغلقته اصبح ظلام  فمن اكون؟

1- الفم 
2- الاذن
3- الثلاجه

⇜ ارسل الجواب الصحيح
]]
t4 =[[
كم جزء تحتوي مسلسل وادي الذئاب؟

1- 7
2- 15
3- 11

⇜ ارسل الجواب الصحيح
]]
t5 =[[
كم جزء يحتوي القران الكريم؟

1- 60
2- 70
3- 30 

⇜ ارسل الجواب الصحيح
]]
t6 =[[
من هوه اغنى رئيس في العالم؟

1- ترامب
2- اوباما
3- بوتين  

⇜ ارسل الجواب الصحيح
]]

t7 =[[
من هوه مؤسس شركه ابل العالميه 

1-لاري بايج 
2- بيا غايتز
3- ستيف جوبر

⇜ ارسل الجواب الصحيح
]]
t8 =[[
ماهي عاصمه فرنسا؟

1- باريس 
2- لوين 
3- موسكو 

⇜ ارسل الجواب الصحيح
]]
t9 =[[
ماعدد دول العربيه التي توجد في افريقيا 

1- 10 
2- 17
3- 9

⇜ ارسل الجواب الصحيح
]]
t11 =[[
ماهو الحيوان الذي يحمل 50 فوق وزنه؟
1-الفيل
2- النمل  
3- الثور

⇜ ارسل الجواب الصحيح
]]
t12 =[[
ماذا يوجد بيني وبينك؟  
1- الضل
2- الاخلاق
3-حرف الواو  

⇜ ارسل الجواب الصحيح
]]
t13 =[[
ماهو الشيء النبات ينبت للانسان بلا بذر؟
1-الاضافر 
2- الاسنان
3- الشعر

⇜ ارسل الجواب الصحيح
]]
t14 =[[
م̷ـــِْن هو اول الرسول الى الارض؟
1- ادم
2- نوح
3-ابراهيم 

⇜ ارسل الجواب الصحيح
]]
t15 =[[
ما هو الشّيء الذي يستطيع المشي بدون أرجل والبكاء بدون أعين؟
1- سحاب
2- بئر
3- نهر

⇜ ارسل الجواب الصحيح
]]
t16 =[[
ما الشيء الذي نمتلكه , لكنّ غيرنا يستعمله أكثر منّا؟
1- العمر
2- ساعه
3- الاسم

⇜ ارسل الجواب الصحيح
]]
t17 =[[
اصفر اللون سارق عقول اهل الكون وحارمهم لذيذ النوم
1- نحاس
2- الماس
3- ذهب

⇜ ارسل الجواب الصحيح
]]
t18 =[[
في الليل ثلاثة لكنه في النهار واحده فما هو
 1- حرف الباء
 2- حرف الام 
3- حرف الراء

⇜ ارسل الجواب الصحيح
]]
t19 =[[
على قدر اصل العزم تأتي؟
1- العزائم 
2- المكارم
3- المبائب

⇜ ارسل الجواب الصحيح
]]

t20 =[[
ماهي جمع كلمه انسه ؟
1- سيدات
2- انسات 
3- قوانص

⇜ ارسل الجواب الصحيح
]]
t21 =[[
اله اتسعلمت قديما في الحروب؟
1- الصاروخ
2- المسدس
3- المنجنيق 

⇜ ارسل الجواب الصحيح
]]
t22 =[[
تقع لبنان في قاره؟
1- افريقيا 
2- اسيا  
3- امركيا الشماليه

⇜ ارسل الجواب الصحيح
]]

t23 =[[
1- ماهو الحيوان الذي يلقب بملك الغابه؟
1-الفيل
2- الاسد 
3- النمر

⇜ ارسل الجواب الصحيح
]]
t24 =[[
كم صفرا للمليون ؟
1- 4 
2- 3
3-6

⇜ ارسل الجواب الصحيح
]]
t25 =[[
ما اسم صغير الحصان؟
1- مهر  
2- جرو
3- عجل

⇜ ارسل الجواب الصحيح
]]
t26 =[[
ما الحيوان الذي ينام واحدى عينه مفتوحه؟

1- القرش
2- الدلفين 
3- الثعلب

⇜ ارسل الجواب الصحيح
]]
t27 =[[
ماهي القاره التي تلقب بالقاره العجوز؟

1- امريكا الشماليه 
2- امريكا الجنوبيه
3- افريقيا 

⇜ ارسل الجواب الصحيح
]]
t28 =[[
ما اسم المعدن الموجود فيي الحاله السائله 

1- النحاس 
2- الحديد
3- الزئبق 
 
⇜ ارسل الجواب الصحيح
]]
t29 =[[
ماهي عاصمه انجلترا؟
1- لندن  
2- لفرسول
3- تركيا

⇜ ارسل الجواب الصحيح
]]
t30 =[[
ماهو الشئ الذي برأسه سبع فتحات

1- الهاتف
2- التلفاز
3- الانسان 

⇜ ارسل الجواب الصحيح
]]
t31 =[[
ماهي عاصمه اليابان ؟
1- بانكول
2- نيو دلهي
3- طوكيو 

⇜ ارسل الجواب الصحيح
]]
t32 =[[
من هي زوجه الرسول الاكبر منه سنآ؟

1- حفضه
2- زينب 
3- خديجه 

⇜ ارسل الجواب الصحيح
]]
TAHA = {t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,t32,t1,t2,t3,t4,t5,t6,t7,t8,t9,t11,t12,t13,t14,t15}
local SENDTEXT = TAHA[math.random(#TAHA)]
if SENDTEXT:find('النيل') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'النيل') 
elseif SENDTEXT:find('14') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'14') 
elseif SENDTEXT:find('الفم') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'الفم') 
elseif SENDTEXT:find('11') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'11') 
elseif SENDTEXT:find('30') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'30') 
elseif SENDTEXT:find('بوتين') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'بوتين') 
elseif SENDTEXT:find('ستيف جوبر') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'ستيف جوبر') 
elseif SENDTEXT:find('باريس') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'باريس') 
elseif SENDTEXT:find('10') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'10') 
elseif SENDTEXT:find('النمل') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'النمل') 
elseif SENDTEXT:find('حرف الواو') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'حرف الواو') 
elseif SENDTEXT:find('الشعر') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'الشعر') 
elseif SENDTEXT:find('ابراهيم') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'ابراهيم') 
elseif SENDTEXT:find('سحاب') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'سحاب') 
elseif SENDTEXT:find('الاسم') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'الاسم') 
elseif SENDTEXT:find('ذهب') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'ذهب') 
elseif SENDTEXT:find('حرف الام') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'حرف الام') 
elseif SENDTEXT:find('العزائم') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'العزائم') 
elseif SENDTEXT:find('انسات') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'انسات') 
elseif SENDTEXT:find('المنجنيق') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'المنجنيق') 
elseif SENDTEXT:find('اسيا') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'اسيا') 
elseif SENDTEXT:find('الاسد') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'الاسد') 
elseif SENDTEXT:find('6') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'6') 
elseif SENDTEXT:find('مهر') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'مهر') 
elseif SENDTEXT:find('الدلفين') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'الدلفين') 
elseif SENDTEXT:find('اوروبا') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'اوروبا') 
elseif SENDTEXT:find('الزئبق') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'الزئبق') 
elseif SENDTEXT:find('لندن') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'لندن') 
elseif SENDTEXT:find('الانسان') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'الانسان') 
elseif SENDTEXT:find('طوكيو') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'طوكيو') 
elseif SENDTEXT:find('خديجه') then
Redis:set(TheMero.."GAME:CHER"..msg.chat_id,'خديجه') 
end
send(msg.chat_id,msg.id,SENDTEXT)
return false  
end
end
if Redis:get(TheMero.."GAME:CHER"..msg.chat_id) and (text == Redis:get(TheMero.."GAME:CHER"..msg.chat_id)) then  
if text then
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)
Redis:del(TheMero.."GAME:CHER"..msg.chat_id)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true)
elseif text == 'الفيل' or text == 'الثور' or text == 'الحصان' or text == '7' or text == '9' or text == '8' or text == 'لوين' or text == 'موسكو' or text == 'مانكو' or text == '20' or text == '30' or text == '28' or text == 'ترامب' or text == 'اوباما' or text == 'كيم جونغ' or text == '50' or text == '70' or text == '40' or text == '7' or text == '3' or text == '10' or text == '4' or text == 'الاذن' or text == 'الثلاجه' or text == 'الغرفه' or text == '15' or text == '17' or text == '25' or text == 'الفرات' or text == 'نهر الكونغو' or text == 'المسيبي' or text == 'بيا بايج' or text == 'لاري بيج' or text == 'بيا مارك زوكيربرج' or text == 'الفيل' or text == 'النمر' or text == 'الفهد' or text == 'بانكول' or text == 'نيو دلهي' or text == 'بيكن' or text == 'الهاتف' or text == 'التلفاز' or text == 'المذياع' or text == 'لفرسول' or text == 'تركيا' or text == 'بغداد' or text == 'النحاس' or text == 'الحديد' or text == 'الفضه' or text == 'امريكا الشماليه' or text == 'امريكا الجنوبيه' or text == 'افريقيا' or text == 'القرش' or text == 'الثعلب' or text == 'الكلب' or text == 'للجرو' or text == 'العجل' or text == 'الحمار' or text == '3' or text == '5' or text == '6' or text == 'اوربا' or text == 'افريقيا' or text == 'امريكا الجنوبيه' or text == 'افريقيا' or text == 'امريكا الشماليه' or text == 'اوربا' or text == 'الصاروخ' or text == 'المسدس' or text == 'الطائرات' or text == 'سيدات' or text == 'قوانص' or text == 'عوانس' or text == 'المكارم' or text == 'المبائم' or text == 'المعازم' or text == 'حرف الغاء' or text == 'حرف الواو' or text == 'حرف النون' or text == 'نحاس' or text == 'الماس' or text == 'حديد' or text == 'العمر' or text == 'ساعه' or text == 'الحذاء' or text == 'بئر' or text == 'نهر' or text == 'شلال' or text == 'ادم' or text == 'نوح' or text == 'عيسئ' or text == 'الاضافر' or text == 'الاسنان' or text == 'الدموع' or text == 'الاخلاق' or text == 'الضل' or text == 'حرف النون'  then
local list = {'10' , 'براسي' , 'النمل' , '32' , 'بوتين' , '30' , '11' , 'الفم' , '14' , 'النيل' , 'ستيف جوبر' , 'خديجه' , 'الاسد' , 'طوكيو' , 'الانسان' , 'لندن' , 'الزئبق' , 'اورباالدولفين' , 'المهر' , '4' , 'اسيا' , 'اسيا' , 'المنجنيق' , 'انسات' , 'العزائم' , 'حرف الام' , 'ذهب' , 'الاسم' , 'سحاب' , 'ابراهيم' , 'الشعر' , 'حرف الواو'}
for k, v in pairs(list) do 
if text ~= v then
Redis:del(TheMero.."GAME:CHER"..msg.chat_id)
send(msg.chat_id,msg.id,'⇜ اجابتك خطأ للاسف ')     
return false  
end
end
end
end
if text == 'رياضيات' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
xxx = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = xxx[math.random(#xxx)]
print(name)
Redis:set(TheMero..'bot:bkbk6'..msg.chat_id,name)
name = string.gsub(name,'9','7 + 2 = ?') name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?') name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?') name = string.gsub(name,'4','40 ÷ 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?') name = string.gsub(name,'10','100 ÷ 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?') name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?') name = string.gsub(name,'5','12 + 1 - 8 = ?') name = string.gsub(name,'16','16 + 16 - 16 = ?')
send(msg_chat_id,msg_id,'⇜ اكمل المعادلة\n ( '..name..' )')     
end 
end
if text == 'انكليزي' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
yyy = {'معلومات','قنوات','مجموعات','كتاب','تفاحه','سدني','نقود','اعلم','ذئب','تمساح','ذكي','شاطئ','غبي',};
name = yyy[math.random(#yyy)]
Redis:set(TheMero..'bot:bkbk7'..msg.chat_id,name)
name = string.gsub(name,'ذئب','Wolf') name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels') name = string.gsub(name,'مجموعات','Groups')
name = string.gsub(name,'كتاب','Book') name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'نقود','money') name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile') name = string.gsub(name,'شاطئ','Beach')
name = string.gsub(name,'غبي','Stupid') name = string.gsub(name,'صداقه','Friendchip')
name = string.gsub(name,'ذكي','Smart') 
send(msg_chat_id,msg_id,' ⇜ ما معنى كلمة ( '..name..' ) ، ')     
end
end
if text == 'روليت' then
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
Redis:del(TheMero..":Number_Add:"..msg.chat_id..msg.sender_id.user_id) 
Redis:del(TheMero..':List_Rolet:'..msg.chat_id)  
Redis:setex(TheMero..":Start_Rolet:"..msg.chat_id..msg.sender_id.user_id,3600,true)  
return send(msg_chat_id,msg_id, '⇜ حسناً لنلعب , ارسل عدد اللاعبين للروليت .',"md")
end
end
if text == 'نعم' and Redis:get(TheMero..":Witting_StartGame:"..msg.chat_id..msg.sender_id.user_id) then
local list = Redis:smembers(TheMero..':List_Rolet:'..msg.chat_id) 
if #list == 1 then 
return send(msg_chat_id,msg_id,"⇜ لم يكتمل عدد اللاعبين .!؟" )
elseif #list == 0 then 
return send(msg_chat_id,msg_id,"⇜ لم تقم باضافه اي لاعب .؟!" )
end 
local UserName = list[math.random(#list)]
local data = bot.searchPublicChat(UserName)
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 5)  
Redis:del(TheMero..':List_Rolet:'..msg.chat_id) 
Redis:del(TheMero..":Witting_StartGame:"..msg.chat_id..msg.sender_id.user_id)
return send(msg_chat_id,msg_id,'⇜ صاحب الحظ ( '..UserName..' )\n⇜ ربحت معنا ( 5 ) نقاط' )
end
if text == 'الاعبين' or text == "اللاعبين" then
local list = Redis:smembers(TheMero..':List_Rolet:'..msg.chat_id) 
local Text = '\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n' 
if #list == 0 then 
return send(msg_chat_id,msg_id, '⇜ لا يوجد لاعبين ' )
end 
for k, v in pairs(list) do 
Text = Text..k.."• ← [" ..v.."] ←\n"  
end 
return Text
end
if text and text:match("^(%d+)$") and Redis:get(TheMero..":Start_Rolet:"..msg.chat_id..msg.sender_id.user_id) then
if text == "1" then
Text = "⇜ لا استطيع بدء اللعبة بلاعب واحد فقط\n"
else
Redis:set(TheMero..":Number_Add:"..msg.chat_id..msg.sender_id.user_id,text)  
Text = '⇜ يرجى ارسال يوزرات اللاعبين \n⇜ الفائز يحصل على ( 5 ) نقاط\n⇜ عدد الاعبين المطلوبين ( '..text..' ) لاعب \n ✧'
end
Redis:del(TheMero..":Start_Rolet:"..msg.chat_id..msg.sender_id.user_id)  
return send(msg_chat_id,msg_id,Text)    
end
if text and text:match('^(@[%a%d_]+)$') and Redis:get(TheMero..":Number_Add:"..msg.chat_id..msg.sender_id.user_id) then    --// استقبال الاسماء
if Redis:sismember(TheMero..':List_Rolet:'..msg.chat_id,text) then
return send(msg_chat_id,msg_id,'⇜  اليوزر ['..text..'] موجود قبل' ,"md")
end
Redis:sadd(TheMero..':List_Rolet:'..msg.chat_id,text)
local CountAdd = Redis:get(TheMero..":Number_Add:"..msg.chat_id..msg.sender_id.user_id)
local CountAll = Redis:scard(TheMero..':List_Rolet:'..msg.chat_id)
local CountUser = CountAdd - CountAll
if tonumber(CountAll) == tonumber(CountAdd) then 
Redis:del(TheMero..":Number_Add:"..msg.chat_id..msg.sender_id.user_id) 
Redis:setex(TheMero..":Witting_StartGame:"..msg.chat_id..msg.sender_id.user_id,1400,true)  
return send(msg_chat_id,msg_id,"⇜ تم ادخال اليوزر ["..text.."] \n⇜ وتم اكتمال العدد الكامل \n⇜ هل انت مستعد ؟ ارسل نعم ","md")
end 
return send(msg_chat_id,msg_id,"⇜ تم ادخال اليوزر ["..text.."] \n⇜ تبقى ( "..CountUser.." ) لاعب ليكتمل العدد\n⇜ ارسل اليوزر التالي ",'md')
end
if text == ''..(Redis:get(TheMero..'bot:bkbk6'..msg.chat_id) or 'لفاتع')..'' then
Redis:del(TheMero..'bot:bkbk6'..msg.chat_id)  
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end 
if text == ''..(Redis:get(TheMero..'bot:bkbk7'..msg.chat_id) or 'لفاتع')..'' then
Redis:del(TheMero..'bot:bkbk7'..msg.chat_id)  
Redis:incrby(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)
local Num = Redis:get(TheMero.."Mero:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
return send(msg_chat_id,msg_id,"\n⇜ كفو اجابتك صح \n⇜ تم اضافة لك نقطة\n⇜ نقاطك الان : "..Num.." \n✧","md",true) 
end
if text == "امثله" or text == "امثلة" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(TheMero..'Mero:Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(TheMero..'Mero:Channel:Join:Name'), url = 't.me/'..Redis:get(TheMero..'Mero:Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'\n⇜ عليك الاشتراك في قناة البوت لاستخدام الاوامر',"md",false, false, false, false, reply_markup)
end
if Redis:get(TheMero.."Mero:Status:Games:malk"..msg.chat_id) then
return false 
end
if Redis:get(TheMero.."Mero:Status:Games"..msg.chat_id) then
mthal = {"جوز","ضراطه","الحبل","الحافي","شقره","بيدك","سلايه","النخله","الخيل","حداد","المبلل","يركص","قرد","العنب","العمه","الخبز","بالحصاد","شهر","شكه","يكحله",};
name = mthal[math.random(#mthal)]
Redis:set(TheMero.."Mero:Game:Example"..msg.chat_id,name)
name = string.gsub(name,"جوز","ينطي____للماعده سنون")
name = string.gsub(name,"ضراطه","الي يسوق المطي يتحمل___")
name = string.gsub(name,"بيدك","اكل___محد يفيدك")
name = string.gsub(name,"الحافي","تجدي من___نعال")
name = string.gsub(name,"شقره","مع الخيل يا___")
name = string.gsub(name,"النخله","الطول طول___والعقل عقل الصخلة")
name = string.gsub(name,"سلايه","بالوجه امراية وبالظهر___")
name = string.gsub(name,"الخيل","من قلة___شدو على الچلاب سروج")
name = string.gsub(name,"حداد","موكل من صخم وجهه كال آني___")
name = string.gsub(name,"المبلل","___ما يخاف من المطر")
name = string.gsub(name,"الحبل","اللي تلدغة الحية يخاف من جرة___")
name = string.gsub(name,"يركص","المايعرف___يكول الكاع عوجه")
name = string.gsub(name,"العنب","المايلوح___يكول حامض")
name = string.gsub(name,"العمه","___إذا حبت الچنة ابليس يدخل الجنة")
name = string.gsub(name,"الخبز","انطي___للخباز حتى لو ياكل نصه")
name = string.gsub(name,"باحصاد","اسمة___ومنجله مكسور")
name = string.gsub(name,"شهر","امشي__ولا تعبر نهر")
name = string.gsub(name,"شكه","يامن تعب يامن__يا من على الحاضر لكة")
name = string.gsub(name,"القرد","__بعين امه غزال")
name = string.gsub(name,"يكحله","اجه___عماها")
return send(msg_chat_id,msg_id,"⇜ اسرع واحد يكمل المثل ( "..name.." )","md",true)  
end
end

end
return {TheMero = RunGames}