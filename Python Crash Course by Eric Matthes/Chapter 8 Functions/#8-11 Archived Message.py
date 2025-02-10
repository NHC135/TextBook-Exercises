#8-11  Archived Message

send = ['haha jk', 'i like your shirt', 'hahahalol']
sent_messages = []

def send_messages(send):
    while send: 
        current_message = send.pop()
        print(f"this is the current message being moved: {current_message}")
        sent_messages.append(current_message)

send_messages(send[:])

print(send)
print(sent_messages)