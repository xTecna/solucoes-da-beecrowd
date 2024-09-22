k = tonumber(io.read(), 10)

if k == 1 then
  print("Top 1")
else
  if k <= 3 then
    print("Top 3")
  else
    if k <= 5 then
      print("Top 5")
    else
      if k <= 10 then
        print("Top 10")
      else
        if k <= 25 then
          print("Top 25")
        else
          if k <= 50 then
            print("Top 50")
          else
            print("Top 100")
          end
        end
      end
    end
  end
end
