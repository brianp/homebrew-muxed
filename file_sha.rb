require 'digest'

file = ARGF.argv.first
digest = Digest::SHA256.file(file).hexdigest
puts digest
