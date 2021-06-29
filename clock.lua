local mon = peripheral.wrap("top")
function round(num, idp)
 local mult = 10^ (idp or 0)
 return math.floor(num * mult +0.5) / mult
end
function loop()
 while true do
 mon.clear()
 mon.setCursorPos(1,1)
 mon.setTextScale(3)
 z = os.time()
 if z < 12 thel
  y = z
  a = y%1
  h = y - a
  b = a * 60
  m = round(b)
  if m >= 10 then
   min = m
  elseif m < 10 then
   min = "0"..m
  end
  if h <  1 then
   hour = 12
  elseif h >= 1 then
   hour = h
  end
  x = hour..":"..min.." AM"
  elseif z > 12 then
  y = z - 12
  a = y%1
  h = y - a
  b = a * 60
  m = round(b)
  if m >= 10 then
   min = m
  elseif m < 10 then
   min = "0"..m
  end
  if h <  1 then
   hour = 12
  elseif h >= 1 then
   hour = h
  end
  x = hour..":"..min.." PM"
 end
 mon.write(x)
 sleep(1)
end
end
loop()
