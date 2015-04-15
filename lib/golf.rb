class Golf
  def hole_1 c
    s=c.upcase==c ? 'A':'a'
    i=0
    (s..c).map{|l|l*i+=1}.join"\n"
  end

  def hole_2 w
    v=%w[a e i o u A E I O U]
    w.split.map{|l|[l.each_char.count{|f|v.include? f},l.each_char.count{|f|!v.include? f},l.downcase,l]}
      .sort.map{|h|h[3]}.join" "
  end

  def hole_3 n
    (1..n).select{|m|n%m==0}
  end

  def hole_4 x,y
    t="+#{'-'*x}+"
    t+"\n"+("|#{' '*x}|\n")*y+t
  end

  def hole_5 a,b
    a=[a,b].map{|i|i.upcase.gsub(/[ ()!-]/,'').each_char.sort}
    a[1]==a[0]
  end

  def hole_6 n
    m="Happy birthday"
    l=" to you\n"
    (m+l)*2+m+" dear #{n}\n"+m+l.chomp
  end

  def hole_7 w,c
    a=('A'..'Z').to_a
    w.upcase.gsub(/[ ?:)-]/,'').chars.map{|l|Hash[a.zip(a.rotate(c))][l]}.each_slice(5).map(&:join).join' '
  end

  def hole_8 s
    c=Hash[('A'..'Z').zip([0]*26)]
    s.gsub(/[ !\.'?]/,'').upcase.chars.each{|w|c[w]+=1}
    c.sort.map{|k,v|"#{k}: #{v}"}.join"\n"
  end

  def hole_9 h
  end
end
