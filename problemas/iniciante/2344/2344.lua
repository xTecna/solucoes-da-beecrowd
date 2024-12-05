n = tonumber(io.read(), 10)

if (n > 85) then
  print("A")
else
  if (n > 60) then
    print("B")
  else
    if (n > 35) then
      print("C")
    else
      if (n > 0) then
        print("D")
      else
        print("E")
      end
    end
  end
end
