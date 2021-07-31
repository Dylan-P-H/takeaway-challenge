
require 'rubygems'
require 'twilio-ruby'

account_sid = ''
auth_token = ''
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages
  .create(
     body: 'Ruby message',
     from: '+17609653155',
     to: ''
   )

puts message.sid
