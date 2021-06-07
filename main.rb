puts "ルール：10枚bet=>中段のみ 20枚bet=>中段+上段 30枚bet=>中段+上段+下段+斜め"
coin = 200
point = 0
  
while true
  
  num1 = rand(9)
  num2 = rand(9)
  num3 = rand(9)
  num4 = rand(9)
  num5 = rand(9)
  num6 = rand(9)
  num7 = rand(9)
  num8 = rand(9)
  num9 = rand(9)
  
  
  puts "----------------------------------"
  puts "残りコイン数 #{coin}"
  puts "ポイント #{point}pt"
  puts "何コイン入れますか？"
  puts "0(10枚) 1(20枚) 2(30枚) 3(やめる)"
  use_coin = gets.to_i
  
  if use_coin == 3
    puts "今回の獲得ポイントは#{point}ptだよ"
    puts "またチャレンジしてね！"
    break
  elsif use_coin == 0
    if coin < 10
      puts "コインが足りません！"
      puts "今回の獲得ポイントは#{point}ptだよ"
      puts "また挑戦してね!"
      break
    end
  elsif use_coin == 1
    if coin < 20
      puts "コインが足りません！"
      puts "betを下げて下さい。"
      next
    end
  elsif use_coin == 2
    if coin < 30
      puts "コインが足りません！"
      puts "betを下げて下さい。"
      next
    end
  end
  
  
  
  puts "----------"
  puts "エンターを3回押して数字を揃えよう！" 
  gets
  puts "-------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  gets
  puts "-------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  gets
  puts "-------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  puts "-------------"
  
  if use_coin == 0
    if (num2 == num5) && (num5 == num8) && (num8 == num2)
      puts "BIG BONUS"
      puts "数字が揃いました。"
      coin += 200
      point += 500
      puts "コイン200枚とポイント500ptゲット"
    else puts "残念！"
      coin -= 10
    end
  elsif use_coin == 1
    if ((num2 == num5) && (num5 == num8) && (num8 == num2))||((num1 == num4) && (num4 == num7) && (num7 == num1))
      puts "BIG BONUS"
      puts "数字が揃いました。"
      coin += 200
      point += 500
      puts "コイン200枚とポイント500ptゲット"
    else puts "残念！"
      coin -= 20
    end
  else use_coin == 2
    if ((num2 == num5) && (num5 == num8) && (num8 == num2))||((num1 == num4) && (num4 == num7) && (num7 == num1)||(num3 == num6) && (num6 == num9) && (num9 == num3)||(num1 == num5) && (num5 == num9) && (num9 == num1)||(num3 == num5) && (num5 == num7) && (num7 == num3))
      puts "BIG BONUS"
      puts "数字が揃いました。"
      coin += 200
      point += 500
      puts "コイン200枚とポイント500ptゲット"
    else puts "残念！"
      coin -= 30
    end
  end
end
