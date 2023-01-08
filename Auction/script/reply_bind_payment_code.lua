local text = string.match(msg.fromMsg,"^[%s]*(.-)[%s]*$",#"&拍卖肾码"+1)

local name = string.sub(text, 1, string.find(text,"image")-6)

local payment_code_image = string.sub(text, string.find(text,"image")-4)


local payment_code_image_file=io.output("payment_code_image.txt")

io.write(payment_code_image)
io.flush()
io.close()

local name_file =io.output("payment_code_name.txt")
io.write(name)
io.flush()
io.close()

msg.pay_name = name

return "{reply_bind_payment_code}"