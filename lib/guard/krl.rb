require 'guard'
require 'guard/guard'

module Guard
  class Krl < Guard

    # ================
    # = Guard method =
    # ================

    def start
      UI.info "Watching your krl..."
    end

    # Call with Ctrl-/ signal
    # This method should be principally used for long action like running all specs/tests/...
    def run_all
       patterns = @watchers.map { |w| w.pattern }
       files = Dir.glob('**/*.*')
       r = []
       files.each do |file|
         patterns.each do |pattern|
           r << file if file.match(Regexp.new(pattern))
         end
       end
       run_on_change(r)
    end

    # Call on file(s) modifications
    def run_on_change(paths)
      paths.each do |file|
        unless File.basename(file)[0] == "_"
          path = File.dirname(file)
          UI.info "Running commit for #{file}..."
          commit_result = `cd #{path}; krl commit`
          UI.info commit_result
          icon = commit_result.match(/Committed version: \d+/) ? :success : :failed
          Notifier.notify commit_result, :title => "KRL Watcher", :image => icon
        end
      end
    end

  end
end
