[Forwarded from √shield√™]
local action = function(msg, matches)
local htp = HTTPS.request('https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20160119T111342Z.fd6bf13b3590838f.6ce9d8cca4672f0ed24f649c1b502789c9f4687a&format=plain&lang='..URL.escape(matches[1])..'&text='..URL.escape(matches[2]))
local shield = json:decode(htp)
local text = 'زبان : '..shield.lang..'\nمعنی : '..shield.text[1]..'\n[>shieldTM<](https://telegram.me/shieldTM)'

api.sendReply(msg,text,true)
end

local triggers = {
  "^[!#/]tr ([^%s]+) (.*)$"
  }
return {
  action = action,
  triggers = triggers
}
