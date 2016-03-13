run = (msg,matches) ->
  message = io.popen("python chatter.py \"#{matches[1]}\"")\read('*all')

  return message

description = "*chatter plugin !*"
usage = [[
`#{bot_first_name}, [text]`
_#{bot_first_name}, How are you ?_
You can also trigger chatter plugin by talking to me in private or replying on of my messages
]]
patterns = {
  "#{bot_first_name}, +(.+)$"
  "^@#{bot_username}, +(.+)$"
}
return {
  :description
  :usage
  :patterns
  :run
}
