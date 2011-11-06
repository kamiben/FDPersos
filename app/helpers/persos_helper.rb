module PersosHelper

def carac(attribut)
"#{attribut} : #{@perso.attributs.find_by_nom(attribut).val}"
end

def tabcarac(attribut)
  out = ""
attribut.each do |a| 
    out = out << "<td>#{a}</td> <td> #{@perso.attributs.find_by_nom(a).val}</td>"
  end
out
end
end
