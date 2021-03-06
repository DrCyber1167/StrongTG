do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 105831687

  if matches[1] == "invparsa" then
    user = 'user#id'..105831687
  end

  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "inviting sudo......"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "invsudo", 
  usage = {
    "!invite name [user_name]", 
    "!invite id [user_id]" },
  patterns = {
    "^[!/](invparsa)$"
  }, 
  run = run 
}

end

