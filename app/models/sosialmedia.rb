class Sosialmedia < ApplicationRecord
  belongs_to :bencana

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Sosialmedia.find_or_create_by! row.to_hash
    end
  end
end
