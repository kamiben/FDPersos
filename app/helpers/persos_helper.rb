module PersosHelper

def carac(attribut)
if (@perso.attributs.find_by_nom(attribut).nil?)
      "#{attribut} : "
    else 
      "#{attribut} : #{@perso.attributs.find_by_nom(attribut).val}"
    end

end

def tabcaracarmes(attribut)
  out = ""
  attribut.each do |a| 
    if (@perso.attributs.find_by_nom(attribut).nil?)
      out = out <<   "<td>0</td>"
    else 
      out = out << " <td>#{@perso.attributs.find_by_nom(attribut).val} </td>"
    end
  end
  out
end

def tabcarac(attribut)
  out = ""
attribut.each do |a| 
    if (@perso.attributs.find_by_nom(a).nil?)
      out = out << "<td>#{a}</td> <td> 0</td>"
    else 
      out = out << "<td>#{a}</td> <td> #{@perso.attributs.find_by_nom(a).val}</td>"
  end
  end
out
end

def tabcaractotale(attribut)
  out = "<tr>"
  trice = 0
  attribut.each do |a|     
    trice = trice +1
    if (@perso.attributs.find_by_nom(a).nil?)
      if (trice==3)
       out = out << "<td>#{a}</td> <td> 0</td></tr>"
       trice = 0
      else 
        out = out << "<td>#{a}</td> <td> 0</td>"
      end
    else 
      if (trice==3)
       out = out << "<td>#{a}</td> <td> #{@perso.attributs.find_by_nom(a).val}</td></tr>"
       trice = 0
      else 
        out = out << "<td>#{a}</td> <td> #{@perso.attributs.find_by_nom(a).val}</td>"
      end
    end
  
  end
  out
end
end
