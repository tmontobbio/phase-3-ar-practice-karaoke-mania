class Performance < ActiveRecord::Base
belongs_to :song
belongs_to :karaoke_singer
end
