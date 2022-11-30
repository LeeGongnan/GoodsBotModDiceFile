notice_head = ".send qq"

local send_flag = string.match(msg.fromMsg,"^[%s]*(.-)[%s]*$",#"&余量推送"+1)


-- local image = string.sub(text, string.find(text,"image")-4)


-- qqnums = {"204978819", "746516427"}
-- for i, qqnum in pairs(qqnums) do
--     sendMsg(image, qqnum, nil)
--     sleepTime(5000)
-- end

test_group = {"667546784"}

-- remaining_image = string.sub(text, string.find(text,"image")-4)

local file1=io.output("local_flag.txt")
io.write(send_flag)
io.flush()
io.close()

if( send_flag == "1" )
then
    cur_msg = "余量自动更新开始"
    sendMsg(cur_msg, nil, "429146733")
else
    cur_msg = "余量更新停止"
    sendMsg(cur_msg, nil, "429146733")
end

while(send_flag == "1")
do
    for i, qqnum in pairs(test_group) do
        sendMsg("余量2", nil, "429146733")
        local time_random = math.random(9000)
        sleepTime(5000+time_random)
    end
    local file1=io.input("local_flag.txt")
    send_flag = io.read("*a")
end

return send_flag
