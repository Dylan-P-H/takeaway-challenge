
require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC1ba5399ec4a3eb888a67d0e118bdb52e'
auth_token = 'f03554c9322686a44a28e91051b3327e'
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages
  .create(
     body: 'Ruby message',
     from: '+17609653155',
     to: ''
   )

puts message.sid