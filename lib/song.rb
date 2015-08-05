require 'pry'

class Song
  attr_accessor :title, :artist

  def serialize
    out = Tempfile.open([sanitize_title, '.txt'], '/Users/drew/oo-data-normalization-web-0715/tmp')
    out.write("#{artist.name} - #{title}")
    out.rewind
    out.close
  end

  private

  def sanitize_title
    @title.downcase.gsub(/ /, '_')
  end
end
