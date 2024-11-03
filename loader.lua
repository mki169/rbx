--[[
░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░      ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░      
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░       
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      
░▒▓█▓▒░       ░▒▓██████▓▒░ ░▒▓█████████████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░      
                                                                                                                                  
                                                                                                                                  
 /$$                                 /$$                          
| $$                                | $$                          
| $$        /$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$   /$$$$$$       
| $$       /$$__  $$ |____  $$ /$$__  $$ /$$__  $$ /$$__  $$      
| $$      | $$  \ $$  /$$$$$$$| $$  | $$| $$$$$$$$| $$  \__/      
| $$      | $$  | $$ /$$__  $$| $$  | $$| $$_____/| $$            
| $$$$$$$$|  $$$$$$/|  $$$$$$$|  $$$$$$$|  $$$$$$$| $$            
|________/ \______/  \_______/ \_______/ \_______/|__/            
                                                                                                                                  
                                                                
--]]

local _bit32bxor=function(a,b)local result=0;local bitval=1;while a>0 or b>0 do local a_bit=a%2;local b_bit=b%2;if a_bit~=b_bit then result=result+bitval end;a=(a-a_bit)/2;b=(b-b_bit)/2;bitval=bitval*2 end;return result end;local _stringfloor=function(number)local int_part=number-number%1;if number<0 and number%1~=0 then int_part=int_part-1 end;return int_part end;local _stringgsub=string.gsub;local _stringuchar=string.char;local _stringcharset={}local _stringchar=function(...)local chars={...}local result=""if#_stringcharset==0 then for i=0,255 do _stringcharset[i]=_stringuchar(i)end end;for i=1,#chars do result=result..(_stringcharset[chars[i]]or _stringuchar(chars[i]))end;return result end;local _stringbyte=string.byte;local _tostring=tostring;local _tonumber=tonumber;local function _dbs(input,key,type)if not input or not key then return input end;local decodedString=""for charc in input:gmatch(".")do local encodedCharCode,charCode=_stringbyte(charc),nil;charCode=_bit32bxor(encodedCharCode,key)decodedString=decodedString.._stringchar(_stringfloor(charCode))end;if type==2 then decodedString=_tonumber(decodedString)elseif type==3 then decodedString=decodedString==_tostring(true)and true or false end;return decodedString end;repeat task.wait()until game:IsLoaded()local Players=game:GetService(_dbs("\242\206\195\219\199\208\209",162,1))local lplr=Players.LocalPlayer;local placeId=game.PlaceId;local gitRepo=_dbs("\211\207\207\203\200\129\148\148\201\218\204\149\220\210\207\211\206\217\206\200\222\201\216\212\213\207\222\213\207\149\216\212\214\148\214\208\210\138\141\130\148\201\217\195\148\201\222\221\200\148\211\222\218\223\200\148\214\218\210\213\148",187,1)..placeId.._dbs("\218",245,1)..placeId.._dbs("\195\129\152\140",237,1)local success,scriptData=pcall(game.HttpGet,game,gitRepo)if not success or scriptData:find(_dbs("\241\245\241\255\229\139\170\177\229\131\170\176\171\161",197,1))then lplr:Kick(_dbs("\203\240\237\235\238\238\241\236\234\251\250\190\219\230\238\251\236\247\251\240\253\251",158,1))else loadstring(scriptData)()end
