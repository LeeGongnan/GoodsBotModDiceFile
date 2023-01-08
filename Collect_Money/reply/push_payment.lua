msg_reply.Push_Payment = {
    keyword = {
        prefix = {"&催肾"}
    },
    limit = {
        cd = {
            user = 20
        }
    },
    echo = { lua = "reply_push_payments" }
}
