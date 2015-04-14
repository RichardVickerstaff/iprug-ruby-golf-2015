class Golf
  def hole_1 c
    s=c.upcase==c ? 'A':'a'
    i=0
    (s..c).map{|l|l*i+=1}.join"\n"
  end

  def hole_2 w
    v=%w[a e i o u A E I O U]
    w.split.map{|l|[l.each_char.select{|f|v.include? f}.size,l.each_char.reject{|f|v.include? f}.size,l.downcase,l]}
      .sort.map{|h|h[3]}.join" "
  end

  def hole_3 n
    (1..n).select{|m|m if n%m==0}
  end

  def hole_4 x,y
  end

  def hole_5 a,b
    a=[a,b].map{|i|i.upcase.gsub(/[ ()!-]/,'').each_char.sort}
    a[1]==a[0]
  end

  def hole_6
  end

  def hole_7
  end

  def hole_8
  end

  def hole_9
  end
end
