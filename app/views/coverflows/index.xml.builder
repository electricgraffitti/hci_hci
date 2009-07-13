xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.artworkinfo do
@coverflows.each do |coverflow|
  xml.albuminfo do
	  xml.artLocation "../" + coverflow.cover.url(:thumb)
		xml.artist coverflow.cflow.title
    xml.albumName coverflow.cflow.title
    xml.artistLink "#{polymorphic_path(coverflow.cflow)}"
    xml.albumLink "#{polymorphic_path(coverflow.cflow)}"
    end
  end
end