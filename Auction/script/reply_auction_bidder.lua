auction_group_test = {"746516427"}
auction_group = {"667546784"}

group_num = "746516427"

local file1=io.input("payment_code_name.txt")
payment_code_name = io.read("*a")

local file1=io.input("payment_code_image.txt")
payment_code_image = io.read("*a")
sendMsg(payment_code_image, group_num, nil)

msg.pay_name = payment_code_name

return "{reply_auction_collect_money}"