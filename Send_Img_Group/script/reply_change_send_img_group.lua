notice_head = ".send qq"

local text = string.match(msg.fromMsg,"^[%s]*(.-)[%s]*$",#"&余量更新"+1)

local image = string.sub(text, string.find(text,"image")-4)


-- qqnums = {"204978819", "746516427"}
-- for i, qqnum in pairs(qqnums) do
--     sendMsg(image, qqnum, nil)
--     sleepTime(5000)
-- end

test_group = {"667546784"}

remaining_image = string.sub(text, string.find(text,"image")-4)


while 
for i, qqnum in pairs(test_group) do
    sendMsg(remaining_image, qqnum, nil)
    local time_random = math.random(9000)
    sleepTime(5000+time_random)
end


return ""