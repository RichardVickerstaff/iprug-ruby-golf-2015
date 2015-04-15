class Golf
  def hole_1 c
    i=0
    ((c>?Z??a:?A)..c).map{|l|l*i+=1}.join"\n"
  end

  def hole_3 n
    (1..n).select{|m|n%m==0}
  end

  def hole_4 x,y
    t="+#{'-'*x}+"
    t+"\n"+("|#{' '*x}|\n")*y+t
  end

  def hole_5 a,b
    a=[a,b].map{|i|i.upcase.gsub(/\W/,'').each_char.sort}
    a[1]==a[0]
  end

  def hole_6 n
    m="Happy birthday"
    l=" to you\n"
    (m+l)*2+m+" dear #{n}\n"+m+l.chomp
  end

  def hole_7 a,n
    a.gsub(/\W/,"").upcase.bytes.map{|x|(x-65+n)%26+65}.map(&:chr).each_slice(5).map(&:join).join" "
  end

  def hole_8 s
    (?A..?Z).map{|c|"#{c}: #{s.upcase.count c}"}.join"\n"
  end

  def hole_9 h
    h.values.flat_map(&:values).inject{|i,j|i.map{|k,v|[k,v+j[k]]}}.to_h
  end

  def hole_2 s
    s.split.sort_by{|w|w.upcase.chars.partition{|x|x !~/AEIOU/}.map(&:length)<<w.upcase}.join" "
  end
end
