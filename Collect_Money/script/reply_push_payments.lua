notice_head = ".send qq"

local text = string.match(msg.fromMsg,"^[%s]*(.-)[%s]*$",#"&催肾"+1)

local prefix = {"ʕ•̫͡•ʔ", "ฅʕ•̫͡•ʔฅ", "(ฅ´ω`ฅ)", "⊙ω⊙", " =͟͟͞͞ʕ•̫͡•ʔ=͟͞҈҈҈", "୧ʕ•̬͡•ʕ•̫͡•♡", "(✪㉨✪)", "(♡㉨♡)"}

local message = string.sub(text, 1, string.find(text,"at")-5)

local atPplGroup = string.sub(text, string.find(text,"at"), string.find(text,"image"))

local image = string.sub(text, string.find(text,"image")-4)


qqnums = {}
for qqnum in string.gmatch(atPplGroup, "%d+") do
    table.insert(qqnums, qqnum.." ")
    local pre_index = math.random(#prefix)
    local total_message = tostring(prefix[pre_index])..tostring(message)
    eventMsg(notice_head..qqnum.." "..total_message..image, msg.fromGroup, "429146733")
    local time_random = math.random(9000)
    sleepTime(5000+time_random)
end

return "已向"..table.concat(qqnums).."催肾"