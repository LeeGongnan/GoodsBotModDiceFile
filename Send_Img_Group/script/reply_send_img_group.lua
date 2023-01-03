notice_head = ".send qq"

local send_flag = string.match(msg.fromMsg,"^[%s]*(.-)[%s]*$",#"&余量推送"+1)


if( send_flag == "0" )
then
    cur_msg = "余量更新停止"
    sendMsg(cur_msg, nil, "429146733")
else
    cur_msg = "余量自动更新开始"
    sendMsg(cur_msg, nil, "429146733")
    remaining_image = string.sub(send_flag, string.find(send_flag,"image")-4)
    send_flag = "1"
end

local file1=io.output("local_flag.txt")
io.write(send_flag)
io.flush()
io.close()

test_group = {"667546784"}
market_group = {"204978819"}

while(send_flag == "1")
do
    for i, group_num in pairs(market_group) do

        sendMsg(remaining_image, group_num, nil)
        local time_random = math.random(1060000)
        sleepTime(36000000+time_random)
    end
    local file1=io.input("local_flag.txt")
    send_flag = io.read("*a")
end

return send_flag
