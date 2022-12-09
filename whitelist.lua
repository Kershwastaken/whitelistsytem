 --setclipboard(syn.crypt.hash(game:GetService("RbxAnalyticsService"):GetClientId(), data))
 local hwid = syn.crypt.hash(game:GetService("RbxAnalyticsService"):GetClientId(), data)
local whitelisted = {
    ["OWNERS"] = {
        "an owners hwid here",
     },
 ["MEMBERS"] = {
     "normal member hwid here"
 }
     
     
     
     
     }
 
 if whitelisted["OWNERS"][hwid] or whitelisted["MEMBERS"][hwid] then
     game:GetService("StarterGui"):SetCore("SendNotification", {
							Title = "awesome!",
							Text = "you are whitelisted!",
							Duration = 3,
						})
     else
         game:GetService("StarterGui"):SetCore("SendNotification", {
							Title = "oops!",
							Text = "not whitelisted!",
							Duration = 3,
						})
     end
