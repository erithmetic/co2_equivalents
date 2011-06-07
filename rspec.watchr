# Run me with:
#   $ watchr rspec.watchr

# --------------------------------------------------
# Rules
# --------------------------------------------------
watch( '^spec/.*_spec\.rb'                 )  { |m| rspec  m[0] }
watch( '^lib/(.*)\.rb'                       )  { |m| rspec "spec/#{m[1]}_spec.rb" }
watch( '^spec/spec_helper\.rb'               )  { rspec specs }

# --------------------------------------------------
# Signal Handling
# --------------------------------------------------
Signal.trap('QUIT') { rspec specs  } # Ctrl-\
Signal.trap('INT' ) { abort("\n") } # Ctrl-C

# --------------------------------------------------
# Helpers
# --------------------------------------------------
def rspec(*paths)
  paths = paths.flatten.select { |p| File.exist?(p) }
  unless paths.empty?
    puts "bundle exec rspec #{paths.join(' ')}"
    puts `bundle exec rspec #{paths.join(' ')}`
  end
end

def specs
  Dir['spec/**/*_spec.rb']
end
